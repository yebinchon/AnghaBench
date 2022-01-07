
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct v4l2_sliced_vbi_format {int ** service_lines; scalar_t__ service_set; } ;


 int select_service_from_set (int,int,scalar_t__,int) ;

void cx18_expand_service_set(struct v4l2_sliced_vbi_format *fmt, int is_pal)
{
 u16 set = fmt->service_set;
 int f, l;

 fmt->service_set = 0;
 for (f = 0; f < 2; f++) {
  for (l = 0; l < 24; l++)
   fmt->service_lines[f][l] = select_service_from_set(f, l, set, is_pal);
 }
}
