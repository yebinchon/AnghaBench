
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_subdev {int dummy; } ;
struct device {int dummy; } ;
struct csiphy_device {int clock; int nclocks; int irq; TYPE_2__* ops; TYPE_1__* camss; } ;
struct TYPE_4__ {int (* hw_version_read ) (struct csiphy_device*,struct device*) ;int (* reset ) (struct csiphy_device*) ;} ;
struct TYPE_3__ {struct device* dev; } ;


 int camss_disable_clocks (int ,int ) ;
 int camss_enable_clocks (int ,int ,struct device*) ;
 int csiphy_set_clock_rates (struct csiphy_device*) ;
 int disable_irq (int ) ;
 int enable_irq (int ) ;
 int pm_runtime_get_sync (struct device*) ;
 int pm_runtime_put_sync (struct device*) ;
 int stub1 (struct csiphy_device*) ;
 int stub2 (struct csiphy_device*,struct device*) ;
 struct csiphy_device* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int csiphy_set_power(struct v4l2_subdev *sd, int on)
{
 struct csiphy_device *csiphy = v4l2_get_subdevdata(sd);
 struct device *dev = csiphy->camss->dev;

 if (on) {
  int ret;

  ret = pm_runtime_get_sync(dev);
  if (ret < 0)
   return ret;

  ret = csiphy_set_clock_rates(csiphy);
  if (ret < 0) {
   pm_runtime_put_sync(dev);
   return ret;
  }

  ret = camss_enable_clocks(csiphy->nclocks, csiphy->clock, dev);
  if (ret < 0) {
   pm_runtime_put_sync(dev);
   return ret;
  }

  enable_irq(csiphy->irq);

  csiphy->ops->reset(csiphy);

  csiphy->ops->hw_version_read(csiphy, dev);
 } else {
  disable_irq(csiphy->irq);

  camss_disable_clocks(csiphy->nclocks, csiphy->clock);

  pm_runtime_put_sync(dev);
 }

 return 0;
}
