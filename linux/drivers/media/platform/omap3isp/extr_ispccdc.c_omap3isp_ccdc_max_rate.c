
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct isp_pipeline {int l3_ick; } ;
struct TYPE_2__ {int entity; } ;
struct isp_ccdc_device {scalar_t__ input; TYPE_1__ subdev; } ;


 scalar_t__ CCDC_INPUT_PARALLEL ;
 unsigned int min (unsigned int,unsigned int) ;
 struct isp_pipeline* to_isp_pipeline (int *) ;

void omap3isp_ccdc_max_rate(struct isp_ccdc_device *ccdc,
       unsigned int *max_rate)
{
 struct isp_pipeline *pipe = to_isp_pipeline(&ccdc->subdev.entity);
 unsigned int rate;

 if (pipe == ((void*)0))
  return;





 if (ccdc->input == CCDC_INPUT_PARALLEL)
  rate = pipe->l3_ick / 2 * 9 / 10;
 else
  rate = pipe->l3_ick / 2;

 *max_rate = min(*max_rate, rate);
}
