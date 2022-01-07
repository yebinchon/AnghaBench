
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct rvin_video_format {int bpp; } ;
struct TYPE_6__ {int field; int bytesperline; int pixelformat; } ;
struct TYPE_4__ {int left; int width; int top; int height; } ;
struct rvin_dev {TYPE_3__ format; TYPE_2__* info; TYPE_1__ crop; } ;
struct TYPE_5__ {scalar_t__ model; } ;


 scalar_t__ RCAR_GEN3 ;



 int VNELPRC_REG ;
 int VNEPPRC_REG ;
 int VNIS_REG ;
 int VNSLPRC_REG ;
 int VNSPPRC_REG ;
 int rvin_crop_scale_comp_gen2 (struct rvin_dev*) ;
 struct rvin_video_format* rvin_format_from_pixel (struct rvin_dev*,int ) ;
 int rvin_write (struct rvin_dev*,int,int ) ;

void rvin_crop_scale_comp(struct rvin_dev *vin)
{
 const struct rvin_video_format *fmt;
 u32 stride;


 rvin_write(vin, vin->crop.left, VNSPPRC_REG);
 rvin_write(vin, vin->crop.left + vin->crop.width - 1, VNEPPRC_REG);

 switch (vin->format.field) {
 case 130:
 case 128:
 case 129:
  rvin_write(vin, vin->crop.top / 2, VNSLPRC_REG);
  rvin_write(vin, (vin->crop.top + vin->crop.height) / 2 - 1,
      VNELPRC_REG);
  break;
 default:
  rvin_write(vin, vin->crop.top, VNSLPRC_REG);
  rvin_write(vin, vin->crop.top + vin->crop.height - 1,
      VNELPRC_REG);
  break;
 }


 if (vin->info->model != RCAR_GEN3)
  rvin_crop_scale_comp_gen2(vin);

 fmt = rvin_format_from_pixel(vin, vin->format.pixelformat);
 stride = vin->format.bytesperline / fmt->bpp;
 rvin_write(vin, stride, VNIS_REG);
}
