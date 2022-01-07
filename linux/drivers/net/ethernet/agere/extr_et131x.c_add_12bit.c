
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int ET_DMA12_WRAP ;
 int INDEX12 (int) ;

__attribute__((used)) static inline void add_12bit(u32 *v, int n)
{
 *v = INDEX12(*v + n) | (*v & ET_DMA12_WRAP);
}
