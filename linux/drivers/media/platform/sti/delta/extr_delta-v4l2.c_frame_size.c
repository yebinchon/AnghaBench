
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;




__attribute__((used)) static inline int frame_size(u32 w, u32 h, u32 fmt)
{
 switch (fmt) {
 case 128:
  return (w * h * 3) / 2;
 default:
  return 0;
 }
}
