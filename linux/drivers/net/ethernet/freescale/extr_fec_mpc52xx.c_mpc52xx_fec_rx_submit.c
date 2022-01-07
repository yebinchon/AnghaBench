
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int data; } ;
struct TYPE_2__ {int parent; } ;
struct net_device {TYPE_1__ dev; } ;
struct mpc52xx_fec_priv {int rx_dmatsk; } ;
struct bcom_fec_bd {int skb_pa; int status; } ;


 int DMA_FROM_DEVICE ;
 int FEC_RX_BUFFER_SIZE ;
 scalar_t__ bcom_prepare_next_buffer (int ) ;
 int bcom_submit_next_buffer (int ,struct sk_buff*) ;
 int dma_map_single (int ,int ,int ,int ) ;
 struct mpc52xx_fec_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static void
mpc52xx_fec_rx_submit(struct net_device *dev, struct sk_buff *rskb)
{
 struct mpc52xx_fec_priv *priv = netdev_priv(dev);
 struct bcom_fec_bd *bd;

 bd = (struct bcom_fec_bd *) bcom_prepare_next_buffer(priv->rx_dmatsk);
 bd->status = FEC_RX_BUFFER_SIZE;
 bd->skb_pa = dma_map_single(dev->dev.parent, rskb->data,
        FEC_RX_BUFFER_SIZE, DMA_FROM_DEVICE);
 bcom_submit_next_buffer(priv->rx_dmatsk, rskb);
}
