
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct via_format {scalar_t__ pixelformat; } ;


 unsigned int N_VIA_FMTS ;
 struct via_format* via_formats ;

__attribute__((used)) static struct via_format *via_find_format(u32 pixelformat)
{
 unsigned i;

 for (i = 0; i < N_VIA_FMTS; i++)
  if (via_formats[i].pixelformat == pixelformat)
   return via_formats + i;

 return via_formats;
}
