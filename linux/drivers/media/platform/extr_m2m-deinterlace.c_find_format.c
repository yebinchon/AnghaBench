
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ pixelformat; } ;
struct TYPE_4__ {TYPE_1__ pix; } ;
struct v4l2_format {int type; TYPE_2__ fmt; } ;
struct deinterlace_fmt {int types; scalar_t__ fourcc; } ;


 unsigned int NUM_FORMATS ;
 struct deinterlace_fmt* formats ;

__attribute__((used)) static struct deinterlace_fmt *find_format(struct v4l2_format *f)
{
 struct deinterlace_fmt *fmt;
 unsigned int k;

 for (k = 0; k < NUM_FORMATS; k++) {
  fmt = &formats[k];
  if ((fmt->types & f->type) &&
   (fmt->fourcc == f->fmt.pix.pixelformat))
   break;
 }

 if (k == NUM_FORMATS)
  return ((void*)0);

 return &formats[k];
}
