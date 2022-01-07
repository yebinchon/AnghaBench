
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int do_div (int,int) ;

__attribute__((used)) static u64 link_freq_to_pixel_rate(u64 f)
{
 f *= 2 * 4;
 do_div(f, 10);

 return f;
}
