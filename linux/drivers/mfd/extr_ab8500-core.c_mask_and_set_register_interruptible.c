
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct ab8500 {int (* write_masked ) (struct ab8500*,int,int,int) ;int (* read ) (struct ab8500*,int) ;int (* write ) (struct ab8500*,int,int) ;int lock; int dev; } ;


 int dev_err (int ,char*,int,int) ;
 int dev_vdbg (int ,char*,int,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct ab8500*,int) ;
 int stub2 (struct ab8500*,int,int) ;
 int stub3 (struct ab8500*,int,int,int) ;

__attribute__((used)) static int mask_and_set_register_interruptible(struct ab8500 *ab8500, u8 bank,
 u8 reg, u8 bitmask, u8 bitvalues)
{
 int ret;
 u16 addr = ((u16)bank) << 8 | reg;

 mutex_lock(&ab8500->lock);

 if (ab8500->write_masked == ((void*)0)) {
  u8 data;

  ret = ab8500->read(ab8500, addr);
  if (ret < 0) {
   dev_err(ab8500->dev, "failed to read reg %#x: %d\n",
    addr, ret);
   goto out;
  }

  data = (u8)ret;
  data = (~bitmask & data) | (bitmask & bitvalues);

  ret = ab8500->write(ab8500, addr, data);
  if (ret < 0)
   dev_err(ab8500->dev, "failed to write reg %#x: %d\n",
    addr, ret);

  dev_vdbg(ab8500->dev, "mask: addr %#x => data %#x\n", addr,
   data);
  goto out;
 }
 ret = ab8500->write_masked(ab8500, addr, bitmask, bitvalues);
 if (ret < 0)
  dev_err(ab8500->dev, "failed to modify reg %#x: %d\n", addr,
   ret);
out:
 mutex_unlock(&ab8500->lock);
 return ret;
}
