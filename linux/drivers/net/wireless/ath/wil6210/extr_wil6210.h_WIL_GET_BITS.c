
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static inline u32 WIL_GET_BITS(u32 x, int b0, int b1)
{
 return (x >> b0) & ((1 << (b1 - b0 + 1)) - 1);
}
