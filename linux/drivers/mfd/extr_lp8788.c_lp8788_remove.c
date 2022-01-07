
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lp8788 {int dev; } ;
struct i2c_client {int dummy; } ;


 struct lp8788* i2c_get_clientdata (struct i2c_client*) ;
 int lp8788_irq_exit (struct lp8788*) ;
 int mfd_remove_devices (int ) ;

__attribute__((used)) static int lp8788_remove(struct i2c_client *cl)
{
 struct lp8788 *lp = i2c_get_clientdata(cl);

 mfd_remove_devices(lp->dev);
 lp8788_irq_exit(lp);
 return 0;
}
