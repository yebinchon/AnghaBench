
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct axienet_local {int dummy; } ;


 int XAE_MDIO_MC_OFFSET ;
 int axienet_iow (struct axienet_local*,int ,int ) ;

void axienet_mdio_disable(struct axienet_local *lp)
{
 axienet_iow(lp, XAE_MDIO_MC_OFFSET, 0);
}
