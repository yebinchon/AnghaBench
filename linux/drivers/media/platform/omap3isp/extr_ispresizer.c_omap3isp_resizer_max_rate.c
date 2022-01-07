
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
struct v4l2_mbus_framefmt {int width; int height; } ;
struct TYPE_4__ {int height; int width; } ;
struct TYPE_5__ {TYPE_1__ active; } ;
struct TYPE_6__ {int entity; } ;
struct isp_res_device {TYPE_2__ crop; struct v4l2_mbus_framefmt* formats; TYPE_3__ subdev; } ;
struct isp_pipeline {unsigned long l3_ick; } ;


 size_t RESZ_PAD_SOURCE ;
 void* div_u64 (int,int ) ;
 unsigned long min (unsigned long,unsigned long) ;
 struct isp_pipeline* to_isp_pipeline (int *) ;

void omap3isp_resizer_max_rate(struct isp_res_device *res,
          unsigned int *max_rate)
{
 struct isp_pipeline *pipe = to_isp_pipeline(&res->subdev.entity);
 const struct v4l2_mbus_framefmt *ofmt = &res->formats[RESZ_PAD_SOURCE];
 unsigned long limit = min(pipe->l3_ick, 200000000UL);
 unsigned long clock;

 clock = div_u64((u64)limit * res->crop.active.height, ofmt->height);
 clock = min(clock, limit / 2);
 *max_rate = div_u64((u64)clock * res->crop.active.width, ofmt->width);
}
