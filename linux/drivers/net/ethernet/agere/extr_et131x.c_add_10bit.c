
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int ET_DMA10_WRAP ;
 int INDEX10 (int) ;

__attribute__((used)) static inline void add_10bit(u32 *v, int n)
{
 *v = INDEX10(*v + n) | (*v & ET_DMA10_WRAP);
}
