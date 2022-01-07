
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int regr (int) ;
 int regw (int,int) ;

__attribute__((used)) static inline void vpif_set_bit(u32 reg, u32 bit)
{
 regw((regr(reg)) | (0x01 << bit), reg);
}
