
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct mc7 {int size; int width; scalar_t__ offset; struct adapter* adapter; } ;
struct adapter {int dummy; } ;


 scalar_t__ A_MC7_BD_ADDR ;
 scalar_t__ A_MC7_BD_DATA0 ;
 scalar_t__ A_MC7_BD_DATA1 ;
 scalar_t__ A_MC7_BD_OP ;
 int EINVAL ;
 int EIO ;
 int F_BUSY ;
 int t3_read_reg (struct adapter*,scalar_t__) ;
 int t3_write_reg (struct adapter*,scalar_t__,unsigned int) ;

int t3_mc7_bd_read(struct mc7 *mc7, unsigned int start, unsigned int n,
     u64 *buf)
{
 static const int shift[] = { 0, 0, 16, 24 };
 static const int step[] = { 0, 32, 16, 8 };

 unsigned int size64 = mc7->size / 8;
 struct adapter *adap = mc7->adapter;

 if (start >= size64 || start + n > size64)
  return -EINVAL;

 start *= (8 << mc7->width);
 while (n--) {
  int i;
  u64 val64 = 0;

  for (i = (1 << mc7->width) - 1; i >= 0; --i) {
   int attempts = 10;
   u32 val;

   t3_write_reg(adap, mc7->offset + A_MC7_BD_ADDR, start);
   t3_write_reg(adap, mc7->offset + A_MC7_BD_OP, 0);
   val = t3_read_reg(adap, mc7->offset + A_MC7_BD_OP);
   while ((val & F_BUSY) && attempts--)
    val = t3_read_reg(adap,
        mc7->offset + A_MC7_BD_OP);
   if (val & F_BUSY)
    return -EIO;

   val = t3_read_reg(adap, mc7->offset + A_MC7_BD_DATA1);
   if (mc7->width == 0) {
    val64 = t3_read_reg(adap,
          mc7->offset +
          A_MC7_BD_DATA0);
    val64 |= (u64) val << 32;
   } else {
    if (mc7->width > 1)
     val >>= shift[mc7->width];
    val64 |= (u64) val << (step[mc7->width] * i);
   }
   start += 8;
  }
  *buf++ = val64;
 }
 return 0;
}
