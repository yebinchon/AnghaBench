
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct v4l2_pix_format {int field; int height; int sizeimage; int bytesperline; int width; int pixelformat; } ;
struct TYPE_3__ {scalar_t__ pixelformat; } ;
struct rvin_dev {TYPE_2__* info; TYPE_1__ format; } ;
struct TYPE_4__ {int max_height; int max_width; } ;


 int RVIN_DEFAULT_FIELD ;
 int RVIN_DEFAULT_FORMAT ;







 scalar_t__ V4L2_PIX_FMT_NV16 ;
 int rvin_format_bytesperline (struct rvin_dev*,struct v4l2_pix_format*) ;
 int rvin_format_from_pixel (struct rvin_dev*,int ) ;
 int rvin_format_sizeimage (struct v4l2_pix_format*) ;
 int v4l_bound_align_image (int *,int,int ,int,int*,int,int ,int,int ) ;
 int vin_dbg (struct rvin_dev*,char*,int ,int,int ,int ) ;

__attribute__((used)) static void rvin_format_align(struct rvin_dev *vin, struct v4l2_pix_format *pix)
{
 u32 walign;

 if (!rvin_format_from_pixel(vin, pix->pixelformat))
  pix->pixelformat = RVIN_DEFAULT_FORMAT;

 switch (pix->field) {
 case 128:
 case 133:
 case 129:
 case 130:
 case 131:
 case 132:
  break;
 case 134:





  pix->field = 132;
  pix->height *= 2;
  break;
 default:
  pix->field = RVIN_DEFAULT_FIELD;
  break;
 }


 walign = vin->format.pixelformat == V4L2_PIX_FMT_NV16 ? 5 : 1;


 v4l_bound_align_image(&pix->width, 2, vin->info->max_width, walign,
         &pix->height, 4, vin->info->max_height, 2, 0);

 pix->bytesperline = rvin_format_bytesperline(vin, pix);
 pix->sizeimage = rvin_format_sizeimage(pix);

 vin_dbg(vin, "Format %ux%u bpl: %u size: %u\n",
  pix->width, pix->height, pix->bytesperline, pix->sizeimage);
}
