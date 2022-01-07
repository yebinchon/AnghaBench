
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {TYPE_2__* netdev; } ;
struct nfp_net {TYPE_1__ dp; } ;
struct TYPE_4__ {int perm_addr; int dev_addr; } ;


 int ETH_ALEN ;
 scalar_t__ NFP_NET_CFG_MACADDR ;
 int eth_hw_addr_random (TYPE_2__*) ;
 int ether_addr_copy (int ,int *) ;
 int is_valid_ether_addr (int *) ;
 int nn_readl (struct nfp_net*,scalar_t__) ;
 int nn_readw (struct nfp_net*,scalar_t__) ;
 int put_unaligned_be16 (int ,int *) ;
 int put_unaligned_be32 (int ,int *) ;

__attribute__((used)) static void nfp_netvf_get_mac_addr(struct nfp_net *nn)
{
 u8 mac_addr[ETH_ALEN];

 put_unaligned_be32(nn_readl(nn, NFP_NET_CFG_MACADDR + 0), &mac_addr[0]);
 put_unaligned_be16(nn_readw(nn, NFP_NET_CFG_MACADDR + 6), &mac_addr[4]);

 if (!is_valid_ether_addr(mac_addr)) {
  eth_hw_addr_random(nn->dp.netdev);
  return;
 }

 ether_addr_copy(nn->dp.netdev->dev_addr, mac_addr);
 ether_addr_copy(nn->dp.netdev->perm_addr, mac_addr);
}
