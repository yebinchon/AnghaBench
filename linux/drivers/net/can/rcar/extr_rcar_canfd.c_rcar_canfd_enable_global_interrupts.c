
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rcar_canfd_global {int base; scalar_t__ fdmode; } ;


 int RCANFD_GCTR ;
 int RCANFD_GCTR_CFMPOFIE ;
 int RCANFD_GCTR_MEIE ;
 int RCANFD_GERFL ;
 int rcar_canfd_set_bit (int ,int ,int ) ;
 int rcar_canfd_write (int ,int ,int ) ;

__attribute__((used)) static void rcar_canfd_enable_global_interrupts(struct rcar_canfd_global *gpriv)
{
 u32 ctr;


 rcar_canfd_write(gpriv->base, RCANFD_GERFL, 0);


 ctr = RCANFD_GCTR_MEIE;
 if (gpriv->fdmode)
  ctr |= RCANFD_GCTR_CFMPOFIE;

 rcar_canfd_set_bit(gpriv->base, RCANFD_GCTR, ctr);
}
