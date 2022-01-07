
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int speed; scalar_t__ duplex; scalar_t__ port; } ;
struct TYPE_3__ {int data; int addr; } ;
struct sxgbe_ops {TYPE_2__ link; TYPE_1__ mii; int mtl; int dma; int desc; int mac; } ;


 int SXGBE_MDIO_SCMD_ADD_REG ;
 int SXGBE_MDIO_SCMD_DATA_REG ;
 int SXGBE_SPEED_10G ;
 int sxgbe_get_core_ops () ;
 int sxgbe_get_desc_ops () ;
 int sxgbe_get_dma_ops () ;
 int sxgbe_get_mtl_ops () ;

__attribute__((used)) static void sxgbe_get_ops(struct sxgbe_ops * const ops_ptr)
{
 ops_ptr->mac = sxgbe_get_core_ops();
 ops_ptr->desc = sxgbe_get_desc_ops();
 ops_ptr->dma = sxgbe_get_dma_ops();
 ops_ptr->mtl = sxgbe_get_mtl_ops();


 ops_ptr->mii.addr = SXGBE_MDIO_SCMD_ADD_REG;
 ops_ptr->mii.data = SXGBE_MDIO_SCMD_DATA_REG;





 ops_ptr->link.port = 0;
 ops_ptr->link.duplex = 0;
 ops_ptr->link.speed = SXGBE_SPEED_10G;
}
