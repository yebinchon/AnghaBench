
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_mbus_framefmt {int dummy; } ;
struct isp_res_device {int lock; scalar_t__ applycrop; int stopping; int wait; } ;


 int RESZ_PAD_SINK ;
 int RESZ_PAD_SOURCE ;
 int V4L2_SUBDEV_FORMAT_ACTIVE ;
 struct v4l2_mbus_framefmt* __resizer_get_format (struct isp_res_device*,int *,int ,int ) ;
 scalar_t__ omap3isp_module_sync_is_stopping (int *,int *) ;
 int resizer_isr_buffer (struct isp_res_device*) ;
 int resizer_set_crop_params (struct isp_res_device*,struct v4l2_mbus_framefmt*,struct v4l2_mbus_framefmt*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void omap3isp_resizer_isr(struct isp_res_device *res)
{
 struct v4l2_mbus_framefmt *informat, *outformat;
 unsigned long flags;

 if (omap3isp_module_sync_is_stopping(&res->wait, &res->stopping))
  return;

 spin_lock_irqsave(&res->lock, flags);

 if (res->applycrop) {
  outformat = __resizer_get_format(res, ((void*)0), RESZ_PAD_SOURCE,
           V4L2_SUBDEV_FORMAT_ACTIVE);
  informat = __resizer_get_format(res, ((void*)0), RESZ_PAD_SINK,
           V4L2_SUBDEV_FORMAT_ACTIVE);
  resizer_set_crop_params(res, informat, outformat);
  res->applycrop = 0;
 }

 spin_unlock_irqrestore(&res->lock, flags);

 resizer_isr_buffer(res);
}
