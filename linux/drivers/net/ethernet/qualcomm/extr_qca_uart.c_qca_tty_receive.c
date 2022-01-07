
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct serdev_device {int dummy; } ;
struct qcauart {TYPE_1__* rx_skb; int frm_handle; struct net_device* net_dev; } ;
struct net_device_stats {int rx_bytes; int rx_errors; int rx_packets; int rx_dropped; } ;
struct net_device {scalar_t__ mtu; struct net_device_stats stats; } ;
typedef int s32 ;
struct TYPE_5__ {int ip_summed; int dev; int protocol; int data; } ;


 int CHECKSUM_UNNECESSARY ;




 scalar_t__ VLAN_ETH_HLEN ;
 int eth_type_trans (TYPE_1__*,int ) ;
 void* netdev_alloc_skb_ip_align (struct net_device*,scalar_t__) ;
 int netdev_dbg (struct net_device*,char*) ;
 int netif_rx_ni (TYPE_1__*) ;
 int qcafrm_fsm_decode (int *,int ,int ,unsigned char const) ;
 struct qcauart* serdev_device_get_drvdata (struct serdev_device*) ;
 int skb_put (TYPE_1__*,int) ;
 int skb_tailroom (TYPE_1__*) ;

__attribute__((used)) static int
qca_tty_receive(struct serdev_device *serdev, const unsigned char *data,
  size_t count)
{
 struct qcauart *qca = serdev_device_get_drvdata(serdev);
 struct net_device *netdev = qca->net_dev;
 struct net_device_stats *n_stats = &netdev->stats;
 size_t i;

 if (!qca->rx_skb) {
  qca->rx_skb = netdev_alloc_skb_ip_align(netdev,
       netdev->mtu +
       VLAN_ETH_HLEN);
  if (!qca->rx_skb) {
   n_stats->rx_errors++;
   n_stats->rx_dropped++;
   return 0;
  }
 }

 for (i = 0; i < count; i++) {
  s32 retcode;

  retcode = qcafrm_fsm_decode(&qca->frm_handle,
         qca->rx_skb->data,
         skb_tailroom(qca->rx_skb),
         data[i]);

  switch (retcode) {
  case 131:
  case 129:
   break;
  case 128:
   netdev_dbg(netdev, "recv: no RX tail\n");
   n_stats->rx_errors++;
   n_stats->rx_dropped++;
   break;
  case 130:
   netdev_dbg(netdev, "recv: invalid RX length\n");
   n_stats->rx_errors++;
   n_stats->rx_dropped++;
   break;
  default:
   n_stats->rx_packets++;
   n_stats->rx_bytes += retcode;
   skb_put(qca->rx_skb, retcode);
   qca->rx_skb->protocol = eth_type_trans(
      qca->rx_skb, qca->rx_skb->dev);
   qca->rx_skb->ip_summed = CHECKSUM_UNNECESSARY;
   netif_rx_ni(qca->rx_skb);
   qca->rx_skb = netdev_alloc_skb_ip_align(netdev,
        netdev->mtu +
        VLAN_ETH_HLEN);
   if (!qca->rx_skb) {
    netdev_dbg(netdev, "recv: out of RX resources\n");
    n_stats->rx_errors++;
    return i;
   }
  }
 }

 return i;
}
