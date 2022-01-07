
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct v4l2_mbus_framefmt {int height; int width; } ;
struct TYPE_8__ {int height; int width; } ;
struct TYPE_7__ {int height; int width; } ;
struct isp_param {TYPE_2__ otf_output; TYPE_1__ otf_input; } ;
struct fimc_is {unsigned int config_index; TYPE_6__* config; } ;
struct TYPE_11__ {int height; int width; } ;
struct fd_param {TYPE_5__ otf_input; } ;
struct TYPE_10__ {int height; int width; } ;
struct TYPE_9__ {int height; int width; } ;
struct drc_param {TYPE_4__ otf_output; TYPE_3__ otf_input; } ;
struct TYPE_12__ {int * p_region_index; struct fd_param fd; struct drc_param drc; struct isp_param isp; } ;


 int PARAM_DRC_OTF_INPUT ;
 int PARAM_DRC_OTF_OUTPUT ;
 int PARAM_FD_OTF_INPUT ;
 int PARAM_ISP_OTF_INPUT ;
 int PARAM_ISP_OTF_OUTPUT ;
 int fimc_is_set_param_bit (struct fimc_is*,int ) ;
 scalar_t__ test_bit (int ,int *) ;

void __is_set_frame_size(struct fimc_is *is, struct v4l2_mbus_framefmt *mf)
{
 unsigned int index = is->config_index;
 struct isp_param *isp;
 struct drc_param *drc;
 struct fd_param *fd;

 isp = &is->config[index].isp;
 drc = &is->config[index].drc;
 fd = &is->config[index].fd;


 isp->otf_input.width = mf->width;
 isp->otf_input.height = mf->height;
 isp->otf_output.width = mf->width;
 isp->otf_output.height = mf->height;

 drc->otf_input.width = mf->width;
 drc->otf_input.height = mf->height;
 drc->otf_output.width = mf->width;
 drc->otf_output.height = mf->height;

 fd->otf_input.width = mf->width;
 fd->otf_input.height = mf->height;

 if (test_bit(PARAM_ISP_OTF_INPUT,
        &is->config[index].p_region_index[0]))
  return;


 fimc_is_set_param_bit(is, PARAM_ISP_OTF_INPUT);
 fimc_is_set_param_bit(is, PARAM_ISP_OTF_OUTPUT);
 fimc_is_set_param_bit(is, PARAM_DRC_OTF_INPUT);
 fimc_is_set_param_bit(is, PARAM_DRC_OTF_OUTPUT);
 fimc_is_set_param_bit(is, PARAM_FD_OTF_INPUT);
}
