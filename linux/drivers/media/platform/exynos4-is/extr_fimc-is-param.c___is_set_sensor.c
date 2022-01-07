
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {int frame_rate; } ;
struct sensor_param {TYPE_2__ frame_rate; } ;
struct TYPE_6__ {int frametime_max; scalar_t__ frametime_min; } ;
struct isp_param {TYPE_3__ otf_input; } ;
struct fimc_is {unsigned int config_index; TYPE_1__* config; } ;
struct TYPE_4__ {struct isp_param isp; struct sensor_param sensor; } ;


 int PARAM_ISP_OTF_INPUT ;
 int PARAM_SENSOR_FRAME_RATE ;
 int fimc_is_hw_get_sensor_max_framerate (struct fimc_is*) ;
 int fimc_is_set_param_bit (struct fimc_is*,int ) ;

void __is_set_sensor(struct fimc_is *is, int fps)
{
 unsigned int index = is->config_index;
 struct sensor_param *sensor;
 struct isp_param *isp;

 sensor = &is->config[index].sensor;
 isp = &is->config[index].isp;

 if (fps == 0) {
  sensor->frame_rate.frame_rate =
    fimc_is_hw_get_sensor_max_framerate(is);
  isp->otf_input.frametime_min = 0;
  isp->otf_input.frametime_max = 66666;
 } else {
  sensor->frame_rate.frame_rate = fps;
  isp->otf_input.frametime_min = 0;
  isp->otf_input.frametime_max = (u32)1000000 / fps;
 }

 fimc_is_set_param_bit(is, PARAM_SENSOR_FRAME_RATE);
 fimc_is_set_param_bit(is, PARAM_ISP_OTF_INPUT);
}
