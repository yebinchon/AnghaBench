
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int port; int len; } ;
struct tx_desc {TYPE_1__ header; int data; } ;
struct sk_buff {unsigned int len; } ;
struct net_device {int dummy; } ;
struct ec_bhf_priv {size_t tx_dnext; int tx_dcount; unsigned int stat_tx_bytes; struct tx_desc* tx_descs; } ;
typedef int netdev_tx_t ;


 int NETDEV_TX_OK ;
 int TX_HDR_PORT_0 ;
 int cpu_to_le16 (unsigned int) ;
 int dev_kfree_skb (struct sk_buff*) ;
 int ec_bhf_desc_sent (struct tx_desc*) ;
 int ec_bhf_send_packet (struct ec_bhf_priv*,struct tx_desc*) ;
 int memset (TYPE_1__*,int ,int) ;
 struct ec_bhf_priv* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int skb_copy_and_csum_dev (struct sk_buff*,int ) ;
 int smp_wmb () ;

__attribute__((used)) static netdev_tx_t ec_bhf_start_xmit(struct sk_buff *skb,
         struct net_device *net_dev)
{
 struct ec_bhf_priv *priv = netdev_priv(net_dev);
 struct tx_desc *desc;
 unsigned len;

 desc = &priv->tx_descs[priv->tx_dnext];

 skb_copy_and_csum_dev(skb, desc->data);
 len = skb->len;

 memset(&desc->header, 0, sizeof(desc->header));
 desc->header.len = cpu_to_le16(len);
 desc->header.port = TX_HDR_PORT_0;

 ec_bhf_send_packet(priv, desc);

 priv->tx_dnext = (priv->tx_dnext + 1) % priv->tx_dcount;

 if (!ec_bhf_desc_sent(&priv->tx_descs[priv->tx_dnext])) {



  smp_wmb();

  netif_stop_queue(net_dev);
 }

 priv->stat_tx_bytes += len;

 dev_kfree_skb(skb);

 return NETDEV_TX_OK;
}
