
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vpe_fmt {scalar_t__ fourcc; } ;
struct TYPE_3__ {scalar_t__ pixelformat; } ;
struct TYPE_4__ {TYPE_1__ pix; } ;
struct v4l2_format {TYPE_2__ fmt; } ;


 unsigned int ARRAY_SIZE (struct vpe_fmt*) ;
 struct vpe_fmt* vpe_formats ;

__attribute__((used)) static struct vpe_fmt *find_format(struct v4l2_format *f)
{
 struct vpe_fmt *fmt;
 unsigned int k;

 for (k = 0; k < ARRAY_SIZE(vpe_formats); k++) {
  fmt = &vpe_formats[k];
  if (fmt->fourcc == f->fmt.pix.pixelformat)
   return fmt;
 }

 return ((void*)0);
}
