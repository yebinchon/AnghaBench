
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long rx_packets; unsigned long rx_bytes; unsigned long rx_frame_errors; } ;
struct net_device {TYPE_1__ stats; } ;
struct hns_nic_ring_data {int (* poll_one ) (struct hns_nic_ring_data*,int,int ) ;} ;
struct hns_nic_priv {struct hns_nic_ring_data* ring_data; struct net_device* netdev; } ;


 int __lb_other_process ;
 int stub1 (struct hns_nic_ring_data*,int,int ) ;

__attribute__((used)) static int __lb_clean_rings(struct hns_nic_priv *priv,
       int ringid0, int ringid1, int budget)
{
 int i, ret;
 struct hns_nic_ring_data *ring_data;
 struct net_device *ndev = priv->netdev;
 unsigned long rx_packets = ndev->stats.rx_packets;
 unsigned long rx_bytes = ndev->stats.rx_bytes;
 unsigned long rx_frame_errors = ndev->stats.rx_frame_errors;

 for (i = ringid0; i <= ringid1; i++) {
  ring_data = &priv->ring_data[i];
  (void)ring_data->poll_one(ring_data,
       budget, __lb_other_process);
 }
 ret = (int)(ndev->stats.rx_packets - rx_packets);
 ndev->stats.rx_packets = rx_packets;
 ndev->stats.rx_bytes = rx_bytes;
 ndev->stats.rx_frame_errors = rx_frame_errors;
 return ret;
}
