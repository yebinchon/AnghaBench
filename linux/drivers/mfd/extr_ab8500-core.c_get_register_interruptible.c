
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct ab8500 {int (* read ) (struct ab8500*,int) ;int dev; int lock; } ;


 int dev_err (int ,char*,int,int) ;
 int dev_vdbg (int ,char*,int,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct ab8500*,int) ;

__attribute__((used)) static int get_register_interruptible(struct ab8500 *ab8500, u8 bank,
 u8 reg, u8 *value)
{
 int ret;
 u16 addr = ((u16)bank) << 8 | reg;

 mutex_lock(&ab8500->lock);

 ret = ab8500->read(ab8500, addr);
 if (ret < 0)
  dev_err(ab8500->dev, "failed to read reg %#x: %d\n",
   addr, ret);
 else
  *value = ret;

 mutex_unlock(&ab8500->lock);
 dev_vdbg(ab8500->dev, "rd: addr %#x => data %#x\n", addr, ret);

 return (ret < 0) ? ret : 0;
}
