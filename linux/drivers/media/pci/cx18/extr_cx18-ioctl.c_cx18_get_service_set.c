
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct v4l2_sliced_vbi_format {int ** service_lines; } ;



u16 cx18_get_service_set(struct v4l2_sliced_vbi_format *fmt)
{
 int f, l;
 u16 set = 0;

 for (f = 0; f < 2; f++) {
  for (l = 0; l < 24; l++)
   set |= fmt->service_lines[f][l];
 }
 return set;
}
