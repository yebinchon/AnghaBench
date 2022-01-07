
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcar_canfd_global {int base; } ;


 int RCANFD_GCTR ;
 int RCANFD_GERFL ;
 int rcar_canfd_write (int ,int ,int ) ;

__attribute__((used)) static void rcar_canfd_disable_global_interrupts(struct rcar_canfd_global
       *gpriv)
{

 rcar_canfd_write(gpriv->base, RCANFD_GCTR, 0);


 rcar_canfd_write(gpriv->base, RCANFD_GERFL, 0);
}
