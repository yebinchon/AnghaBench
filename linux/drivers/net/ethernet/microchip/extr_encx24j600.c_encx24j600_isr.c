
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int rx_dropped; } ;
struct net_device {TYPE_1__ stats; } ;
struct encx24j600_priv {int lock; struct net_device* ndev; } ;
typedef int irqreturn_t ;


 int CLREIE ;
 int EIR ;
 int ESTAT ;
 int IRQ_HANDLED ;
 int LINKIF ;
 int PCFULIF ;
 int PKTIF ;
 int RXABTIF ;
 int SETEIE ;
 int TXABTIF ;
 int TXIF ;
 int encx24j600_clr_bits (struct encx24j600_priv*,int ,int) ;
 int encx24j600_cmd (struct encx24j600_priv*,int ) ;
 int encx24j600_int_link_handler (struct encx24j600_priv*) ;
 int encx24j600_read_reg (struct encx24j600_priv*,int ) ;
 int encx24j600_rx_packets (struct encx24j600_priv*,int) ;
 int encx24j600_tx_complete (struct encx24j600_priv*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int netif_err (struct encx24j600_priv*,int ,struct net_device*,char*) ;
 int rx_err ;

__attribute__((used)) static irqreturn_t encx24j600_isr(int irq, void *dev_id)
{
 struct encx24j600_priv *priv = dev_id;
 struct net_device *dev = priv->ndev;
 int eir;


 encx24j600_cmd(priv, CLREIE);

 eir = encx24j600_read_reg(priv, EIR);

 if (eir & LINKIF)
  encx24j600_int_link_handler(priv);

 if (eir & TXIF)
  encx24j600_tx_complete(priv, 0);

 if (eir & TXABTIF)
  encx24j600_tx_complete(priv, 1);

 if (eir & RXABTIF) {
  if (eir & PCFULIF) {

   netif_err(priv, rx_err, dev, "Packet counter full\n");
  }
  dev->stats.rx_dropped++;
  encx24j600_clr_bits(priv, EIR, RXABTIF);
 }

 if (eir & PKTIF) {
  u8 packet_count;

  mutex_lock(&priv->lock);

  packet_count = encx24j600_read_reg(priv, ESTAT) & 0xff;
  while (packet_count) {
   encx24j600_rx_packets(priv, packet_count);
   packet_count = encx24j600_read_reg(priv, ESTAT) & 0xff;
  }

  mutex_unlock(&priv->lock);
 }


 encx24j600_cmd(priv, SETEIE);

 return IRQ_HANDLED;
}
