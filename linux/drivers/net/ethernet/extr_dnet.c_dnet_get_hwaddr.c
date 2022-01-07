
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct dnet {TYPE_1__* dev; } ;
typedef int addr ;
typedef int __be16 ;
struct TYPE_2__ {int dev_addr; } ;


 int DNET_INTERNAL_MAC_ADDR_0_REG ;
 int DNET_INTERNAL_MAC_ADDR_1_REG ;
 int DNET_INTERNAL_MAC_ADDR_2_REG ;
 int cpu_to_be16 (int ) ;
 int dnet_readw_mac (struct dnet*,int ) ;
 scalar_t__ is_valid_ether_addr (int *) ;
 int memcpy (int ,int *,int) ;

__attribute__((used)) static void dnet_get_hwaddr(struct dnet *bp)
{
 u16 tmp;
 u8 addr[6];
 tmp = dnet_readw_mac(bp, DNET_INTERNAL_MAC_ADDR_0_REG);
 *((__be16 *)addr) = cpu_to_be16(tmp);
 tmp = dnet_readw_mac(bp, DNET_INTERNAL_MAC_ADDR_1_REG);
 *((__be16 *)(addr + 2)) = cpu_to_be16(tmp);
 tmp = dnet_readw_mac(bp, DNET_INTERNAL_MAC_ADDR_2_REG);
 *((__be16 *)(addr + 4)) = cpu_to_be16(tmp);

 if (is_valid_ether_addr(addr))
  memcpy(bp->dev->dev_addr, addr, sizeof(addr));
}
