
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int const active; TYPE_1__* params; } ;
struct isp_prev_device {TYPE_2__ params; } ;
struct isp_device {struct isp_prev_device isp_prev; } ;
struct TYPE_3__ {int update; } ;


 int OMAP3ISP_PREV_FEATURES_END ;
 int preview_setup_hw (struct isp_prev_device*,int const,int const) ;

void omap3isp_preview_restore_context(struct isp_device *isp)
{
 struct isp_prev_device *prev = &isp->isp_prev;
 const u32 update = OMAP3ISP_PREV_FEATURES_END - 1;

 prev->params.params[0].update = prev->params.active & update;
 prev->params.params[1].update = ~prev->params.active & update;

 preview_setup_hw(prev, update, prev->params.active);

 prev->params.params[0].update = 0;
 prev->params.params[1].update = 0;
}
