
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qcaspi_stats {int dummy; } ;
struct qcaspi {int buffer_size; TYPE_1__* net_dev; int rx_buffer; int rx_skb; int stats; int * spi_thread; int burst_len; int clkspeed; } ;
struct net_device {int mtu; int type; } ;
struct TYPE_2__ {scalar_t__ mtu; } ;


 int ARPHRD_ETHER ;
 int ENOBUFS ;
 int GFP_KERNEL ;
 int QCAFRM_FOOTER_LEN ;
 int QCAFRM_HEADER_LEN ;
 int QCAFRM_MAX_MTU ;
 int VLAN_ETH_HLEN ;
 int kfree (int ) ;
 int kmalloc (int,int ) ;
 int memset (int *,int ,int) ;
 int netdev_alloc_skb_ip_align (struct net_device*,scalar_t__) ;
 int netdev_info (TYPE_1__*,char*) ;
 struct qcaspi* netdev_priv (struct net_device*) ;
 int qcaspi_burst_len ;
 int qcaspi_clkspeed ;

__attribute__((used)) static int
qcaspi_netdev_init(struct net_device *dev)
{
 struct qcaspi *qca = netdev_priv(dev);

 dev->mtu = QCAFRM_MAX_MTU;
 dev->type = ARPHRD_ETHER;
 qca->clkspeed = qcaspi_clkspeed;
 qca->burst_len = qcaspi_burst_len;
 qca->spi_thread = ((void*)0);
 qca->buffer_size = (dev->mtu + VLAN_ETH_HLEN + QCAFRM_HEADER_LEN +
  QCAFRM_FOOTER_LEN + 4) * 4;

 memset(&qca->stats, 0, sizeof(struct qcaspi_stats));

 qca->rx_buffer = kmalloc(qca->buffer_size, GFP_KERNEL);
 if (!qca->rx_buffer)
  return -ENOBUFS;

 qca->rx_skb = netdev_alloc_skb_ip_align(dev, qca->net_dev->mtu +
      VLAN_ETH_HLEN);
 if (!qca->rx_skb) {
  kfree(qca->rx_buffer);
  netdev_info(qca->net_dev, "Failed to allocate RX sk_buff.\n");
  return -ENOBUFS;
 }

 return 0;
}
