
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_mbus_framefmt {int field; int code; int colorspace; int height; int width; } ;
struct TYPE_4__ {int code; int colorspace; } ;
struct TYPE_3__ {int height; int width; } ;


 int V4L2_FIELD_NONE ;
 TYPE_2__* ov965x_formats ;
 TYPE_1__* ov965x_framesizes ;

__attribute__((used)) static void ov965x_get_default_format(struct v4l2_mbus_framefmt *mf)
{
 mf->width = ov965x_framesizes[0].width;
 mf->height = ov965x_framesizes[0].height;
 mf->colorspace = ov965x_formats[0].colorspace;
 mf->code = ov965x_formats[0].code;
 mf->field = V4L2_FIELD_NONE;
}
