
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int STADRH ;
 int STADRL ;
 int regw (unsigned long,int ) ;

__attribute__((used)) static inline void ccdc_setfbaddr(unsigned long addr)
{
 regw((addr >> 21) & 0x007f, STADRH);
 regw((addr >> 5) & 0x0ffff, STADRL);
}
