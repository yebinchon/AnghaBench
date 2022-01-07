
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct vsc73xx {TYPE_1__* ds; int * addr; struct device* dev; scalar_t__ reset; } ;
struct device {int dummy; } ;
struct TYPE_4__ {int * ops; struct vsc73xx* priv; } ;


 int EAGAIN ;
 int ENODEV ;
 int ENOMEM ;
 int GPIOD_OUT_LOW ;
 scalar_t__ IS_ERR (scalar_t__) ;
 int PTR_ERR (scalar_t__) ;
 int dev_err (struct device*,char*,...) ;
 int dev_info (struct device*,char*,int ,int ,int ,int ,int ,int ) ;
 scalar_t__ devm_gpiod_get_optional (struct device*,char*,int ) ;
 int dsa_register_switch (TYPE_1__*) ;
 TYPE_1__* dsa_switch_alloc (struct device*,int) ;
 int dsa_unregister_switch (TYPE_1__*) ;
 int eth_random_addr (int *) ;
 int gpiod_set_value_cansleep (scalar_t__,int) ;
 int msleep (int) ;
 int usleep_range (int,int) ;
 int vsc73xx_detect (struct vsc73xx*) ;
 int vsc73xx_ds_ops ;
 int vsc73xx_gpio_probe (struct vsc73xx*) ;

int vsc73xx_probe(struct vsc73xx *vsc)
{
 struct device *dev = vsc->dev;
 int ret;


 vsc->reset = devm_gpiod_get_optional(dev, "reset", GPIOD_OUT_LOW);
 if (IS_ERR(vsc->reset)) {
  dev_err(dev, "failed to get RESET GPIO\n");
  return PTR_ERR(vsc->reset);
 }
 if (vsc->reset)

  msleep(20);

 ret = vsc73xx_detect(vsc);
 if (ret == -EAGAIN) {
  dev_err(vsc->dev,
   "Chip seems to be out of control. Assert reset and try again.\n");
  gpiod_set_value_cansleep(vsc->reset, 1);



  usleep_range(10, 100);
  gpiod_set_value_cansleep(vsc->reset, 0);

  msleep(20);
  ret = vsc73xx_detect(vsc);
 }
 if (ret) {
  dev_err(dev, "no chip found (%d)\n", ret);
  return -ENODEV;
 }

 eth_random_addr(vsc->addr);
 dev_info(vsc->dev,
   "MAC for control frames: %02X:%02X:%02X:%02X:%02X:%02X\n",
   vsc->addr[0], vsc->addr[1], vsc->addr[2],
   vsc->addr[3], vsc->addr[4], vsc->addr[5]);
 vsc->ds = dsa_switch_alloc(dev, 8);
 if (!vsc->ds)
  return -ENOMEM;
 vsc->ds->priv = vsc;

 vsc->ds->ops = &vsc73xx_ds_ops;
 ret = dsa_register_switch(vsc->ds);
 if (ret) {
  dev_err(dev, "unable to register switch (%d)\n", ret);
  return ret;
 }

 ret = vsc73xx_gpio_probe(vsc);
 if (ret) {
  dsa_unregister_switch(vsc->ds);
  return ret;
 }

 return 0;
}
