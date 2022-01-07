
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct gsc_fmt {scalar_t__ pixelformat; scalar_t__ mbus_code; } ;


 unsigned int ARRAY_SIZE (int ) ;
 struct gsc_fmt* get_format (unsigned int) ;
 int gsc_formats ;

const struct gsc_fmt *find_fmt(u32 *pixelformat, u32 *mbus_code, u32 index)
{
 const struct gsc_fmt *fmt, *def_fmt = ((void*)0);
 unsigned int i;

 if (index >= ARRAY_SIZE(gsc_formats))
  return ((void*)0);

 for (i = 0; i < ARRAY_SIZE(gsc_formats); ++i) {
  fmt = get_format(i);
  if (pixelformat && fmt->pixelformat == *pixelformat)
   return fmt;
  if (mbus_code && fmt->mbus_code == *mbus_code)
   return fmt;
  if (index == i)
   def_fmt = fmt;
 }
 return def_fmt;

}
