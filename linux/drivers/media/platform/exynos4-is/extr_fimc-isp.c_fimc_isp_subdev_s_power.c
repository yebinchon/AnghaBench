
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_subdev {int dummy; } ;
struct fimc_isp {int dummy; } ;
struct fimc_is {size_t config_index; scalar_t__ state; TYPE_2__* config; TYPE_1__* pdev; } ;
struct TYPE_4__ {scalar_t__* p_region_index; } ;
struct TYPE_3__ {int dev; } ;


 int FIMC_IS_CONFIG_TIMEOUT ;
 int IS_ST_IDLE ;
 int IS_ST_INIT_DONE ;
 int IS_ST_OPEN_SENSOR ;
 int IS_ST_PWR_ON ;
 int IS_ST_PWR_SUBIP_ON ;
 int clear_bit (int ,scalar_t__*) ;
 int fimc_is_cpu_set_power (struct fimc_is*,int ) ;
 int fimc_is_hw_close_sensor (struct fimc_is*,int ) ;
 int fimc_is_hw_initialize (struct fimc_is*) ;
 int fimc_is_hw_subip_power_off (struct fimc_is*) ;
 int fimc_is_start_firmware (struct fimc_is*) ;
 int fimc_is_wait_event (struct fimc_is*,int ,int ,int ) ;
 struct fimc_is* fimc_isp_to_is (struct fimc_isp*) ;
 int pm_runtime_get_sync (int *) ;
 int pm_runtime_put (int *) ;
 int pm_runtime_put_sync (int *) ;
 int pr_debug (char*,int) ;
 int set_bit (int ,scalar_t__*) ;
 scalar_t__ test_bit (int ,scalar_t__*) ;
 int v4l2_err (struct v4l2_subdev*,char*) ;
 struct fimc_isp* v4l2_get_subdevdata (struct v4l2_subdev*) ;
 int wmb () ;

__attribute__((used)) static int fimc_isp_subdev_s_power(struct v4l2_subdev *sd, int on)
{
 struct fimc_isp *isp = v4l2_get_subdevdata(sd);
 struct fimc_is *is = fimc_isp_to_is(isp);
 int ret = 0;

 pr_debug("on: %d\n", on);

 if (on) {
  ret = pm_runtime_get_sync(&is->pdev->dev);
  if (ret < 0)
   return ret;
  set_bit(IS_ST_PWR_ON, &is->state);

  ret = fimc_is_start_firmware(is);
  if (ret < 0) {
   v4l2_err(sd, "firmware booting failed\n");
   pm_runtime_put(&is->pdev->dev);
   return ret;
  }
  set_bit(IS_ST_PWR_SUBIP_ON, &is->state);

  ret = fimc_is_hw_initialize(is);
 } else {

  if (!test_bit(IS_ST_PWR_ON, &is->state)) {
   fimc_is_hw_close_sensor(is, 0);

   ret = fimc_is_wait_event(is, IS_ST_OPEN_SENSOR, 0,
       FIMC_IS_CONFIG_TIMEOUT);
   if (ret < 0) {
    v4l2_err(sd, "sensor close timeout\n");
    return ret;
   }
  }


  if (test_bit(IS_ST_PWR_SUBIP_ON, &is->state)) {
   fimc_is_hw_subip_power_off(is);
   ret = fimc_is_wait_event(is, IS_ST_PWR_SUBIP_ON, 0,
       FIMC_IS_CONFIG_TIMEOUT);
   if (ret < 0) {
    v4l2_err(sd, "sub-IP power off timeout\n");
    return ret;
   }
  }

  fimc_is_cpu_set_power(is, 0);
  pm_runtime_put_sync(&is->pdev->dev);

  clear_bit(IS_ST_PWR_ON, &is->state);
  clear_bit(IS_ST_INIT_DONE, &is->state);
  is->state = 0;
  is->config[is->config_index].p_region_index[0] = 0;
  is->config[is->config_index].p_region_index[1] = 0;
  set_bit(IS_ST_IDLE, &is->state);
  wmb();
 }

 return ret;
}
