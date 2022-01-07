
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ov2680_mode_info {int dummy; } ;
struct TYPE_3__ {int numerator; int denominator; } ;
struct TYPE_4__ {int width; int height; int colorspace; int field; int code; } ;
struct ov2680_dev {int mode_pending_changes; struct ov2680_mode_info const* current_mode; TYPE_1__ frame_interval; TYPE_2__ fmt; } ;


 int MEDIA_BUS_FMT_SBGGR10_1X10 ;
 int OV2680_FRAME_RATE ;
 int V4L2_COLORSPACE_SRGB ;
 int V4L2_FIELD_NONE ;
 struct ov2680_mode_info ov2680_mode_init_data ;

__attribute__((used)) static int ov2680_mode_init(struct ov2680_dev *sensor)
{
 const struct ov2680_mode_info *init_mode;


 sensor->fmt.code = MEDIA_BUS_FMT_SBGGR10_1X10;
 sensor->fmt.width = 800;
 sensor->fmt.height = 600;
 sensor->fmt.field = V4L2_FIELD_NONE;
 sensor->fmt.colorspace = V4L2_COLORSPACE_SRGB;

 sensor->frame_interval.denominator = OV2680_FRAME_RATE;
 sensor->frame_interval.numerator = 1;

 init_mode = &ov2680_mode_init_data;

 sensor->current_mode = init_mode;

 sensor->mode_pending_changes = 1;

 return 0;
}
