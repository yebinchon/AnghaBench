
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int u_char ;
struct map_info {struct cfi_private* fldrv_priv; } ;
struct flchip {int mutex; int start; int state; } ;
struct cfi_private {int device_type; int addr_unlock1; int addr_unlock2; } ;
typedef scalar_t__ loff_t ;


 int CMD (int) ;
 int EINVAL ;
 int EIO ;
 int FL_LOCKING ;
 int FL_READY ;
 int UDELAY (struct map_info*,struct flchip*,int ,int) ;
 int cfi_read_query (struct map_info*,int ) ;
 int cfi_send_gen_cmd (int,int ,int ,struct map_info*,struct cfi_private*,int ,int *) ;
 scalar_t__ chip_ready (struct map_info*,struct flchip*,scalar_t__) ;
 int get_chip (struct map_info*,struct flchip*,int ,int ) ;
 unsigned long jiffies ;
 int map_write (struct map_info*,int ,int ) ;
 unsigned long msecs_to_jiffies (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_err (char*) ;
 int put_chip (struct map_info*,struct flchip*,int ) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;

__attribute__((used)) static int do_otp_lock(struct map_info *map, struct flchip *chip, loff_t adr,
         size_t len, u_char *buf, size_t grouplen)
{
 struct cfi_private *cfi = map->fldrv_priv;
 uint8_t lockreg;
 unsigned long timeo;
 int ret;


 if ((adr != 0) || (len != grouplen))
  return -EINVAL;

 mutex_lock(&chip->mutex);
 ret = get_chip(map, chip, chip->start, FL_LOCKING);
 if (ret) {
  mutex_unlock(&chip->mutex);
  return ret;
 }
 chip->state = FL_LOCKING;


 cfi_send_gen_cmd(0xAA, cfi->addr_unlock1, chip->start, map, cfi,
    cfi->device_type, ((void*)0));
 cfi_send_gen_cmd(0x55, cfi->addr_unlock2, chip->start, map, cfi,
    cfi->device_type, ((void*)0));
 cfi_send_gen_cmd(0x40, cfi->addr_unlock1, chip->start, map, cfi,
    cfi->device_type, ((void*)0));


 lockreg = cfi_read_query(map, 0);


 lockreg &= ~0x01;



 map_write(map, CMD(0xA0), chip->start);
 map_write(map, CMD(lockreg), chip->start);


 timeo = jiffies + msecs_to_jiffies(2);
 for (;;) {
  if (chip_ready(map, chip, adr))
   break;

  if (time_after(jiffies, timeo)) {
   pr_err("Waiting for chip to be ready timed out.\n");
   ret = -EIO;
   break;
  }
  UDELAY(map, chip, 0, 1);
 }


 map_write(map, CMD(0x90), chip->start);
 map_write(map, CMD(0x00), chip->start);

 chip->state = FL_READY;
 put_chip(map, chip, chip->start);
 mutex_unlock(&chip->mutex);

 return ret;
}
