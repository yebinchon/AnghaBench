
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static inline u32 cxgb_compute_wscale(u32 win)
{
 u32 wscale = 0;

 while (wscale < 14 && (65535 << wscale) < win)
  wscale++;
 return wscale;
}
