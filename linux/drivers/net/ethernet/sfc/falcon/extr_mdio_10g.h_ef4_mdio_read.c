
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* mdio_read ) (int ,int ,int,int) ;int prtad; } ;
struct ef4_nic {TYPE_1__ mdio; int net_dev; } ;


 int stub1 (int ,int ,int,int) ;

__attribute__((used)) static inline int ef4_mdio_read(struct ef4_nic *efx, int devad, int addr)
{
 return efx->mdio.mdio_read(efx->net_dev, efx->mdio.prtad, devad, addr);
}
