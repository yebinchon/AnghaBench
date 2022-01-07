
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static inline u32 amap_mask(u32 bitsize)
{
 return (bitsize == 32 ? 0xFFFFFFFF : (1 << bitsize) - 1);
}
