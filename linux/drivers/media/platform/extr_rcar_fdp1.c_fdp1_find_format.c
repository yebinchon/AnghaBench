
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct fdp1_fmt {scalar_t__ fourcc; } ;


 unsigned int ARRAY_SIZE (struct fdp1_fmt*) ;
 struct fdp1_fmt* fdp1_formats ;

__attribute__((used)) static const struct fdp1_fmt *fdp1_find_format(u32 pixelformat)
{
 const struct fdp1_fmt *fmt;
 unsigned int i;

 for (i = 0; i < ARRAY_SIZE(fdp1_formats); i++) {
  fmt = &fdp1_formats[i];
  if (fmt->fourcc == pixelformat)
   return fmt;
 }

 return ((void*)0);
}
