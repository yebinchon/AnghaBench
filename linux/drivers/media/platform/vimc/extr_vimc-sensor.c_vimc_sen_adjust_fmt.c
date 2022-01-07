
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vimc_pix_map {int dummy; } ;
struct v4l2_mbus_framefmt {int width; int height; scalar_t__ field; int code; } ;
struct TYPE_2__ {scalar_t__ field; int code; } ;


 scalar_t__ V4L2_FIELD_ALTERNATE ;
 scalar_t__ V4L2_FIELD_ANY ;
 int VIMC_FRAME_MAX_HEIGHT ;
 int VIMC_FRAME_MAX_WIDTH ;
 int VIMC_FRAME_MIN_HEIGHT ;
 int VIMC_FRAME_MIN_WIDTH ;
 int clamp_t (int ,int,int ,int ) ;
 TYPE_1__ fmt_default ;
 int u32 ;
 int vimc_colorimetry_clamp (struct v4l2_mbus_framefmt*) ;
 struct vimc_pix_map* vimc_pix_map_by_code (int ) ;

__attribute__((used)) static void vimc_sen_adjust_fmt(struct v4l2_mbus_framefmt *fmt)
{
 const struct vimc_pix_map *vpix;


 vpix = vimc_pix_map_by_code(fmt->code);
 if (!vpix)
  fmt->code = fmt_default.code;

 fmt->width = clamp_t(u32, fmt->width, VIMC_FRAME_MIN_WIDTH,
        VIMC_FRAME_MAX_WIDTH) & ~1;
 fmt->height = clamp_t(u32, fmt->height, VIMC_FRAME_MIN_HEIGHT,
         VIMC_FRAME_MAX_HEIGHT) & ~1;


 if (fmt->field == V4L2_FIELD_ANY || fmt->field == V4L2_FIELD_ALTERNATE)
  fmt->field = fmt_default.field;

 vimc_colorimetry_clamp(fmt);
}
