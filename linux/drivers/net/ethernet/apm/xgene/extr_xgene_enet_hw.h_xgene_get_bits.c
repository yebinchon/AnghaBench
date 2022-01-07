
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int GENMASK (int,int) ;

__attribute__((used)) static inline u32 xgene_get_bits(u32 val, u32 start, u32 end)
{
 return (val & GENMASK(end, start)) >> start;
}
