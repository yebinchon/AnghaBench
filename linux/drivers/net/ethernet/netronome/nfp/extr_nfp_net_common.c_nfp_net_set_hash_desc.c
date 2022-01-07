
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfp_net_rx_hash {int hash; int hash_type; } ;
struct TYPE_2__ {int flags; } ;
struct nfp_net_rx_desc {TYPE_1__ rxd; } ;
struct nfp_meta_parsed {int dummy; } ;
struct net_device {int dummy; } ;


 int PCIE_DESC_RX_RSS ;
 int get_unaligned_be32 (int *) ;
 int nfp_net_set_hash (struct net_device*,struct nfp_meta_parsed*,int ,int *) ;

__attribute__((used)) static void
nfp_net_set_hash_desc(struct net_device *netdev, struct nfp_meta_parsed *meta,
        void *data, struct nfp_net_rx_desc *rxd)
{
 struct nfp_net_rx_hash *rx_hash = data;

 if (!(rxd->rxd.flags & PCIE_DESC_RX_RSS))
  return;

 nfp_net_set_hash(netdev, meta, get_unaligned_be32(&rx_hash->hash_type),
    &rx_hash->hash);
}
