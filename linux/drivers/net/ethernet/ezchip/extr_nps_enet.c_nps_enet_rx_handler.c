
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int ip_summed; int protocol; int data; } ;
struct nps_enet_priv {int dummy; } ;
struct TYPE_2__ {int rx_bytes; int rx_packets; int rx_dropped; int rx_errors; int rx_length_errors; int rx_crc_errors; } ;
struct net_device {TYPE_1__ stats; } ;


 int CHECKSUM_UNNECESSARY ;
 int ETH_ZLEN ;
 int NPS_ENET_REG_RX_CTL ;
 int RX_CTL_CRC_MASK ;
 int RX_CTL_CRC_SHIFT ;
 int RX_CTL_CR_MASK ;
 int RX_CTL_CR_SHIFT ;
 int RX_CTL_ER_MASK ;
 int RX_CTL_ER_SHIFT ;
 int RX_CTL_NR_MASK ;
 int RX_CTL_NR_SHIFT ;
 int eth_type_trans (struct sk_buff*,struct net_device*) ;
 struct sk_buff* netdev_alloc_skb_ip_align (struct net_device*,int) ;
 struct nps_enet_priv* netdev_priv (struct net_device*) ;
 int netif_receive_skb (struct sk_buff*) ;
 int nps_enet_clean_rx_fifo (struct net_device*,int) ;
 int nps_enet_read_rx_fifo (struct net_device*,int ,int) ;
 int nps_enet_reg_get (struct nps_enet_priv*,int ) ;
 int nps_enet_reg_set (struct nps_enet_priv*,int ,int ) ;
 int skb_put (struct sk_buff*,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static u32 nps_enet_rx_handler(struct net_device *ndev)
{
 u32 frame_len, err = 0;
 u32 work_done = 0;
 struct nps_enet_priv *priv = netdev_priv(ndev);
 struct sk_buff *skb;
 u32 rx_ctrl_value = nps_enet_reg_get(priv, NPS_ENET_REG_RX_CTL);
 u32 rx_ctrl_cr = (rx_ctrl_value & RX_CTL_CR_MASK) >> RX_CTL_CR_SHIFT;
 u32 rx_ctrl_er = (rx_ctrl_value & RX_CTL_ER_MASK) >> RX_CTL_ER_SHIFT;
 u32 rx_ctrl_crc = (rx_ctrl_value & RX_CTL_CRC_MASK) >> RX_CTL_CRC_SHIFT;

 frame_len = (rx_ctrl_value & RX_CTL_NR_MASK) >> RX_CTL_NR_SHIFT;


 if (!rx_ctrl_cr)
  return work_done;


 work_done++;


 if (rx_ctrl_er) {
  ndev->stats.rx_errors++;
  err = 1;
 }


 if (rx_ctrl_crc) {
  ndev->stats.rx_crc_errors++;
  ndev->stats.rx_dropped++;
  err = 1;
 }


 if (unlikely(frame_len < ETH_ZLEN)) {
  ndev->stats.rx_length_errors++;
  ndev->stats.rx_dropped++;
  err = 1;
 }

 if (err)
  goto rx_irq_clean;


 skb = netdev_alloc_skb_ip_align(ndev, frame_len);
 if (unlikely(!skb)) {
  ndev->stats.rx_errors++;
  ndev->stats.rx_dropped++;
  goto rx_irq_clean;
 }


 nps_enet_read_rx_fifo(ndev, skb->data, frame_len);

 skb_put(skb, frame_len);
 skb->protocol = eth_type_trans(skb, ndev);
 skb->ip_summed = CHECKSUM_UNNECESSARY;

 ndev->stats.rx_packets++;
 ndev->stats.rx_bytes += frame_len;
 netif_receive_skb(skb);

 goto rx_irq_frame_done;

rx_irq_clean:

 nps_enet_clean_rx_fifo(ndev, frame_len);

rx_irq_frame_done:

 nps_enet_reg_set(priv, NPS_ENET_REG_RX_CTL, 0);

 return work_done;
}
