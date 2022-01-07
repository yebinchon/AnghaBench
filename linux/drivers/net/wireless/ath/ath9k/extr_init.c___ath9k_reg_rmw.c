
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct ath_softc {unsigned int mem; } ;


 unsigned int ioread32 (unsigned int) ;
 int iowrite32 (unsigned int,unsigned int) ;

__attribute__((used)) static unsigned int __ath9k_reg_rmw(struct ath_softc *sc, u32 reg_offset,
        u32 set, u32 clr)
{
 u32 val;

 val = ioread32(sc->mem + reg_offset);
 val &= ~clr;
 val |= set;
 iowrite32(val, sc->mem + reg_offset);

 return val;
}
