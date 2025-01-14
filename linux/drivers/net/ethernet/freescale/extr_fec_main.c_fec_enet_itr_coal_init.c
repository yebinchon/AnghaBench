
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_coalesce {void* tx_max_coalesced_frames; void* tx_coalesce_usecs; void* rx_max_coalesced_frames; void* rx_coalesce_usecs; } ;


 void* FEC_ITR_ICFT_DEFAULT ;
 void* FEC_ITR_ICTT_DEFAULT ;
 int fec_enet_set_coalesce (struct net_device*,struct ethtool_coalesce*) ;

__attribute__((used)) static void fec_enet_itr_coal_init(struct net_device *ndev)
{
 struct ethtool_coalesce ec;

 ec.rx_coalesce_usecs = FEC_ITR_ICTT_DEFAULT;
 ec.rx_max_coalesced_frames = FEC_ITR_ICFT_DEFAULT;

 ec.tx_coalesce_usecs = FEC_ITR_ICTT_DEFAULT;
 ec.tx_max_coalesced_frames = FEC_ITR_ICFT_DEFAULT;

 fec_enet_set_coalesce(ndev, &ec);
}
