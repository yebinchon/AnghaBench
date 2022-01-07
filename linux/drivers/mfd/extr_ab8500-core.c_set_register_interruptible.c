
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct ab8500 {int (* write ) (struct ab8500*,int,int) ;int lock; int dev; } ;


 int dev_err (int ,char*,int,int) ;
 int dev_vdbg (int ,char*,int,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct ab8500*,int,int) ;

__attribute__((used)) static int set_register_interruptible(struct ab8500 *ab8500, u8 bank,
 u8 reg, u8 data)
{
 int ret;




 u16 addr = ((u16)bank) << 8 | reg;

 dev_vdbg(ab8500->dev, "wr: addr %#x <= %#x\n", addr, data);

 mutex_lock(&ab8500->lock);

 ret = ab8500->write(ab8500, addr, data);
 if (ret < 0)
  dev_err(ab8500->dev, "failed to write reg %#x: %d\n",
   addr, ret);
 mutex_unlock(&ab8500->lock);

 return ret;
}
