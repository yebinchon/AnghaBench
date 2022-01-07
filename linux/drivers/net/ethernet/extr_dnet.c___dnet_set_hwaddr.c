
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct dnet {TYPE_1__* dev; } ;
typedef int __be16 ;
struct TYPE_2__ {scalar_t__ dev_addr; } ;


 int DNET_INTERNAL_MAC_ADDR_0_REG ;
 int DNET_INTERNAL_MAC_ADDR_1_REG ;
 int DNET_INTERNAL_MAC_ADDR_2_REG ;
 int be16_to_cpup (int *) ;
 int dnet_writew_mac (struct dnet*,int ,int ) ;

__attribute__((used)) static void __dnet_set_hwaddr(struct dnet *bp)
{
 u16 tmp;

 tmp = be16_to_cpup((__be16 *)bp->dev->dev_addr);
 dnet_writew_mac(bp, DNET_INTERNAL_MAC_ADDR_0_REG, tmp);
 tmp = be16_to_cpup((__be16 *)(bp->dev->dev_addr + 2));
 dnet_writew_mac(bp, DNET_INTERNAL_MAC_ADDR_1_REG, tmp);
 tmp = be16_to_cpup((__be16 *)(bp->dev->dev_addr + 4));
 dnet_writew_mac(bp, DNET_INTERNAL_MAC_ADDR_2_REG, tmp);
}
