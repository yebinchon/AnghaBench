
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vpfe_fmt {unsigned int fourcc; } ;


 unsigned int ARRAY_SIZE (struct vpfe_fmt*) ;
 struct vpfe_fmt* formats ;

__attribute__((used)) static struct vpfe_fmt *find_format_by_pix(unsigned int pixelformat)
{
 struct vpfe_fmt *fmt;
 unsigned int k;

 for (k = 0; k < ARRAY_SIZE(formats); k++) {
  fmt = &formats[k];
  if (fmt->fourcc == pixelformat)
   return fmt;
 }

 return ((void*)0);
}
