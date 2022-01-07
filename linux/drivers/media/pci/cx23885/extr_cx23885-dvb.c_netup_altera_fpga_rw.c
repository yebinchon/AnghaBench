
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct cx23885_dev {int dummy; } ;


 int ALT_AD_RG ;
 int ALT_CS ;
 int ALT_DATA ;
 int ALT_RD ;
 int ALT_RDY ;
 int ALT_WR ;
 int MC417_OEN ;
 int MC417_RWD ;
 int cx_clear (int ,int) ;
 int cx_read (int ) ;
 int cx_set (int ,int) ;
 int cx_write (int ,int) ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;
 int udelay (int) ;

__attribute__((used)) static int netup_altera_fpga_rw(void *device, int flag, int data, int read)
{
 struct cx23885_dev *dev = (struct cx23885_dev *)device;
 unsigned long timeout = jiffies + msecs_to_jiffies(1);
 uint32_t mem = 0;

 mem = cx_read(MC417_RWD);
 if (read)
  cx_set(MC417_OEN, ALT_DATA);
 else {
  cx_clear(MC417_OEN, ALT_DATA);
  mem &= ~ALT_DATA;
  mem |= (data & ALT_DATA);
 }

 if (flag)
  mem |= ALT_AD_RG;
 else
  mem &= ~ALT_AD_RG;

 mem &= ~ALT_CS;
 if (read)
  mem = (mem & ~ALT_RD) | ALT_WR;
 else
  mem = (mem & ~ALT_WR) | ALT_RD;

 cx_write(MC417_RWD, mem);

 for (;;) {
  mem = cx_read(MC417_RWD);
  if ((mem & ALT_RDY) == 0)
   break;
  if (time_after(jiffies, timeout))
   break;
  udelay(1);
 }

 cx_set(MC417_RWD, ALT_RD | ALT_WR | ALT_CS);
 if (read)
  return mem & ALT_DATA;

 return 0;
}
