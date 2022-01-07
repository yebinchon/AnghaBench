
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;





__attribute__((used)) static inline int frame_stride(u32 w, u32 fmt)
{
 switch (fmt) {
 case 129:
 case 128:
  return w;
 default:
  return 0;
 }
}
