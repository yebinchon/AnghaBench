
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;


 int OV8856_SCLK ;
 int do_div (int,int ) ;
 int to_pixel_rate (int) ;

__attribute__((used)) static u64 to_pixels_per_line(u32 hts, u32 f_index)
{
 u64 ppl = hts * to_pixel_rate(f_index);

 do_div(ppl, OV8856_SCLK);

 return ppl;
}
