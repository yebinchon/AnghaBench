
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static unsigned int tw5864_md_metric_from_mvd(u32 mvd)
{
 unsigned int mv_y = (mvd >> 10) & 0x3ff;
 unsigned int mv_x = mvd & 0x3ff;


 mv_x &= 0x0f;
 mv_y &= 0x0f;

 return mv_y + mv_x;
}
