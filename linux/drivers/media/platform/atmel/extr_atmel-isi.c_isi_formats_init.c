
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev_mbus_code_enum {scalar_t__ code; int index; int which; } ;
struct v4l2_subdev {int dummy; } ;
struct isi_format {scalar_t__ mbus_code; scalar_t__ fourcc; } ;
struct TYPE_2__ {struct v4l2_subdev* subdev; } ;
struct atmel_isi {unsigned int num_user_formats; int * user_formats; int current_fmt; int dev; TYPE_1__ entity; } ;


 unsigned int ARRAY_SIZE (struct isi_format*) ;
 int ENOMEM ;
 int ENXIO ;
 int GFP_KERNEL ;
 int V4L2_SUBDEV_FORMAT_ACTIVE ;
 int * devm_kcalloc (int ,unsigned int,int,int ) ;
 int enum_mbus_code ;
 struct isi_format* isi_formats ;
 int memcpy (int *,struct isi_format const**,unsigned int) ;
 int pad ;
 int v4l2_subdev_call (struct v4l2_subdev*,int ,int ,int *,struct v4l2_subdev_mbus_code_enum*) ;

__attribute__((used)) static int isi_formats_init(struct atmel_isi *isi)
{
 const struct isi_format *isi_fmts[ARRAY_SIZE(isi_formats)];
 unsigned int num_fmts = 0, i, j;
 struct v4l2_subdev *subdev = isi->entity.subdev;
 struct v4l2_subdev_mbus_code_enum mbus_code = {
  .which = V4L2_SUBDEV_FORMAT_ACTIVE,
 };

 while (!v4l2_subdev_call(subdev, pad, enum_mbus_code,
     ((void*)0), &mbus_code)) {
  for (i = 0; i < ARRAY_SIZE(isi_formats); i++) {
   if (isi_formats[i].mbus_code != mbus_code.code)
    continue;


   for (j = 0; j < num_fmts; j++)
    if (isi_fmts[j]->fourcc == isi_formats[i].fourcc)

     break;
   if (j == num_fmts)

    isi_fmts[num_fmts++] = isi_formats + i;
  }
  mbus_code.index++;
 }

 if (!num_fmts)
  return -ENXIO;

 isi->num_user_formats = num_fmts;
 isi->user_formats = devm_kcalloc(isi->dev,
      num_fmts, sizeof(struct isi_format *),
      GFP_KERNEL);
 if (!isi->user_formats)
  return -ENOMEM;

 memcpy(isi->user_formats, isi_fmts,
        num_fmts * sizeof(struct isi_format *));
 isi->current_fmt = isi->user_formats[0];

 return 0;
}
