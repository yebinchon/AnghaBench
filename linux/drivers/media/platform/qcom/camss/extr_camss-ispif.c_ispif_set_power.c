
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev {int dummy; } ;
struct ispif_line {size_t vfe_id; struct ispif_device* ispif; } ;
struct ispif_device {int power_count; int power_lock; int clock; int nclocks; TYPE_1__* intf_cmd; } ;
struct device {int dummy; } ;
struct TYPE_2__ {void* cmd_1; void* cmd_0; } ;


 void* CMD_ALL_NO_CHANGE ;
 int camss_disable_clocks (int ,int ) ;
 int camss_enable_clocks (int ,int ,struct device*) ;
 int dev_err (struct device*,char*) ;
 int ispif_reset (struct ispif_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pm_runtime_get_sync (struct device*) ;
 int pm_runtime_put_sync (struct device*) ;
 struct device* to_device (struct ispif_device*) ;
 struct ispif_line* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int ispif_set_power(struct v4l2_subdev *sd, int on)
{
 struct ispif_line *line = v4l2_get_subdevdata(sd);
 struct ispif_device *ispif = line->ispif;
 struct device *dev = to_device(ispif);
 int ret = 0;

 mutex_lock(&ispif->power_lock);

 if (on) {
  if (ispif->power_count) {

   ispif->power_count++;
   goto exit;
  }

  ret = pm_runtime_get_sync(dev);
  if (ret < 0)
   goto exit;

  ret = camss_enable_clocks(ispif->nclocks, ispif->clock, dev);
  if (ret < 0) {
   pm_runtime_put_sync(dev);
   goto exit;
  }

  ret = ispif_reset(ispif);
  if (ret < 0) {
   pm_runtime_put_sync(dev);
   camss_disable_clocks(ispif->nclocks, ispif->clock);
   goto exit;
  }

  ispif->intf_cmd[line->vfe_id].cmd_0 = CMD_ALL_NO_CHANGE;
  ispif->intf_cmd[line->vfe_id].cmd_1 = CMD_ALL_NO_CHANGE;

  ispif->power_count++;
 } else {
  if (ispif->power_count == 0) {
   dev_err(dev, "ispif power off on power_count == 0\n");
   goto exit;
  } else if (ispif->power_count == 1) {
   camss_disable_clocks(ispif->nclocks, ispif->clock);
   pm_runtime_put_sync(dev);
  }

  ispif->power_count--;
 }

exit:
 mutex_unlock(&ispif->power_lock);

 return ret;
}
