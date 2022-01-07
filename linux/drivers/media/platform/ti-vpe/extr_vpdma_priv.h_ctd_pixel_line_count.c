
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int CTD_PIXEL_COUNT_SHFT ;

__attribute__((used)) static inline u32 ctd_pixel_line_count(int pixel_count, int line_count)
{
 return (pixel_count << CTD_PIXEL_COUNT_SHFT) | line_count;
}
