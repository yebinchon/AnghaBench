
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev {int dummy; } ;
struct device {int dummy; } ;
struct csis_state {TYPE_1__* pdev; } ;
struct TYPE_2__ {struct device dev; } ;


 int pm_runtime_get_sync (struct device*) ;
 int pm_runtime_put_sync (struct device*) ;
 struct csis_state* sd_to_csis_state (struct v4l2_subdev*) ;

__attribute__((used)) static int s5pcsis_s_power(struct v4l2_subdev *sd, int on)
{
 struct csis_state *state = sd_to_csis_state(sd);
 struct device *dev = &state->pdev->dev;

 if (on)
  return pm_runtime_get_sync(dev);

 return pm_runtime_put_sync(dev);
}
