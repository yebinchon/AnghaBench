
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int DTD_MAX_WIDTH_SHFT ;

__attribute__((used)) static inline u32 dtd_max_width_height(int max_width, int max_height)
{
 return (max_width << DTD_MAX_WIDTH_SHFT) | max_height;
}
