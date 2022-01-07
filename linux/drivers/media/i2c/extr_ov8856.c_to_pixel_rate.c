
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef size_t u32 ;


 int OV8856_DATA_LANES ;
 int OV8856_RGB_DEPTH ;
 int do_div (int,int ) ;
 int* link_freq_menu_items ;

__attribute__((used)) static u64 to_pixel_rate(u32 f_index)
{
 u64 pixel_rate = link_freq_menu_items[f_index] * 2 * OV8856_DATA_LANES;

 do_div(pixel_rate, OV8856_RGB_DEPTH);

 return pixel_rate;
}
