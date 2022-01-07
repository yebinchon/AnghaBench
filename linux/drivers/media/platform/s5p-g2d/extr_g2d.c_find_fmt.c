
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ pixelformat; } ;
struct TYPE_4__ {TYPE_1__ pix; } ;
struct v4l2_format {TYPE_2__ fmt; } ;
struct g2d_fmt {scalar_t__ fourcc; } ;


 unsigned int NUM_FORMATS ;
 struct g2d_fmt* formats ;

__attribute__((used)) static struct g2d_fmt *find_fmt(struct v4l2_format *f)
{
 unsigned int i;
 for (i = 0; i < NUM_FORMATS; i++) {
  if (formats[i].fourcc == f->fmt.pix.pixelformat)
   return &formats[i];
 }
 return ((void*)0);
}
