
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct rvin_video_format {scalar_t__ fourcc; } ;
struct rvin_dev {TYPE_1__* info; } ;
struct TYPE_2__ {scalar_t__ model; } ;


 int ARRAY_SIZE (struct rvin_video_format const*) ;
 scalar_t__ RCAR_M1 ;
 scalar_t__ V4L2_PIX_FMT_XBGR32 ;
 struct rvin_video_format const* rvin_formats ;

const struct rvin_video_format *rvin_format_from_pixel(struct rvin_dev *vin,
             u32 pixelformat)
{
 int i;

 if (vin->info->model == RCAR_M1 && pixelformat == V4L2_PIX_FMT_XBGR32)
  return ((void*)0);

 for (i = 0; i < ARRAY_SIZE(rvin_formats); i++)
  if (rvin_formats[i].fourcc == pixelformat)
   return rvin_formats + i;

 return ((void*)0);
}
