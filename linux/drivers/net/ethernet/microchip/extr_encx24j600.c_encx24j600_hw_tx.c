
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct net_device {int dummy; } ;
struct encx24j600_priv {TYPE_1__* tx_skb; struct net_device* ndev; } ;
struct TYPE_2__ {int len; scalar_t__ data; } ;


 int EGPWRPT ;
 int EIR ;
 int ENC_TX_BUF_START ;
 int ETXLEN ;
 int ETXST ;
 int SETTXRTS ;
 int TXABTIF ;
 int TXIF ;
 int WGPDATA ;
 int dump_packet (char*,int ,scalar_t__) ;
 int encx24j600_clr_bits (struct encx24j600_priv*,int ,int ) ;
 int encx24j600_cmd (struct encx24j600_priv*,int ) ;
 int encx24j600_raw_write (struct encx24j600_priv*,int ,int *,int ) ;
 int encx24j600_read_reg (struct encx24j600_priv*,int ) ;
 int encx24j600_reset_hw_tx (struct encx24j600_priv*) ;
 int encx24j600_write_reg (struct encx24j600_priv*,int ,int ) ;
 int netif_info (struct encx24j600_priv*,int ,struct net_device*,char*,int ) ;
 scalar_t__ netif_msg_pktdata (struct encx24j600_priv*) ;
 int tx_queued ;

__attribute__((used)) static void encx24j600_hw_tx(struct encx24j600_priv *priv)
{
 struct net_device *dev = priv->ndev;

 netif_info(priv, tx_queued, dev, "TX Packet Len:%d\n",
     priv->tx_skb->len);

 if (netif_msg_pktdata(priv))
  dump_packet("TX", priv->tx_skb->len, priv->tx_skb->data);

 if (encx24j600_read_reg(priv, EIR) & TXABTIF)

  encx24j600_reset_hw_tx(priv);


 encx24j600_clr_bits(priv, EIR, TXIF);


 encx24j600_write_reg(priv, EGPWRPT, ENC_TX_BUF_START);


 encx24j600_raw_write(priv, WGPDATA, (u8 *)priv->tx_skb->data,
        priv->tx_skb->len);


 encx24j600_write_reg(priv, ETXST, ENC_TX_BUF_START);


 encx24j600_write_reg(priv, ETXLEN, priv->tx_skb->len);


 encx24j600_cmd(priv, SETTXRTS);
}
