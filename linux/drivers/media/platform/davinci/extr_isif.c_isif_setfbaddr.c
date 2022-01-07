
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CADL ;
 int CADU ;
 int regw (unsigned long,int ) ;

__attribute__((used)) static void isif_setfbaddr(unsigned long addr)
{
 regw((addr >> 21) & 0x07ff, CADU);
 regw((addr >> 5) & 0x0ffff, CADL);
}
