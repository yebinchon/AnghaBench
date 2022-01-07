
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_driver {scalar_t__ ack_interrupt; scalar_t__ config_intr; } ;



__attribute__((used)) static bool phy_drv_supports_irq(struct phy_driver *phydrv)
{
 return phydrv->config_intr && phydrv->ack_interrupt;
}
