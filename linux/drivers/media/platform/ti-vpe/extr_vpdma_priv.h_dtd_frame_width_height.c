
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int DTD_FRAME_WIDTH_SHFT ;

__attribute__((used)) static inline u32 dtd_frame_width_height(int width, int height)
{
 return (width << DTD_FRAME_WIDTH_SHFT) | height;
}
