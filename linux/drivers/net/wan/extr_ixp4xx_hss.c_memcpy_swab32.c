
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int swab32 (int ) ;

__attribute__((used)) static inline void memcpy_swab32(u32 *dest, u32 *src, int cnt)
{
 int i;
 for (i = 0; i < cnt; i++)
  dest[i] = swab32(src[i]);
}
