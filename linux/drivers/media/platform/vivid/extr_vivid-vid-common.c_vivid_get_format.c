
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct vivid_fmt {scalar_t__ fourcc; int buffers; } ;
struct vivid_dev {scalar_t__ multiplanar; } ;


 unsigned int ARRAY_SIZE (struct vivid_fmt*) ;
 struct vivid_fmt* vivid_formats ;

const struct vivid_fmt *vivid_get_format(struct vivid_dev *dev, u32 pixelformat)
{
 const struct vivid_fmt *fmt;
 unsigned k;

 for (k = 0; k < ARRAY_SIZE(vivid_formats); k++) {
  fmt = &vivid_formats[k];
  if (fmt->fourcc == pixelformat)
   if (fmt->buffers == 1 || dev->multiplanar)
    return fmt;
 }

 return ((void*)0);
}
