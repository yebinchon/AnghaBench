
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_mbus_framefmt {int height; int width; } ;
struct TYPE_4__ {int height; int width; } ;
struct isp_param {TYPE_2__ otf_input; } ;
struct fimc_is {size_t config_index; TYPE_1__* config; } ;
struct TYPE_3__ {struct isp_param isp; } ;



void __is_get_frame_size(struct fimc_is *is, struct v4l2_mbus_framefmt *mf)
{
 struct isp_param *isp;

 isp = &is->config[is->config_index].isp;
 mf->width = isp->otf_input.width;
 mf->height = isp->otf_input.height;
}
