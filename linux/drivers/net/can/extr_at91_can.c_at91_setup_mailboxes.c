
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct at91_priv {unsigned int rx_next; scalar_t__ tx_echo; scalar_t__ tx_next; int mb0_id; } ;


 int AT91_MAM (unsigned int) ;
 int AT91_MB_MODE_DISABLED ;
 int AT91_MB_MODE_RX ;
 int AT91_MB_MODE_RX_OVRWR ;
 int AT91_MB_MODE_TX ;
 int AT91_MCR (unsigned int) ;
 int AT91_MID (unsigned int) ;
 int AT91_MID_MIDE ;
 int at91_can_id_to_reg_mid (int ) ;
 int at91_write (struct at91_priv*,int ,int) ;
 unsigned int get_mb_rx_first (struct at91_priv*) ;
 unsigned int get_mb_rx_last (struct at91_priv*) ;
 unsigned int get_mb_tx_first (struct at91_priv*) ;
 unsigned int get_mb_tx_last (struct at91_priv*) ;
 struct at91_priv* netdev_priv (struct net_device*) ;
 int set_mb_mode (struct at91_priv*,unsigned int,int ) ;
 int set_mb_mode_prio (struct at91_priv*,unsigned int,int ,int ) ;

__attribute__((used)) static void at91_setup_mailboxes(struct net_device *dev)
{
 struct at91_priv *priv = netdev_priv(dev);
 unsigned int i;
 u32 reg_mid;
 reg_mid = at91_can_id_to_reg_mid(priv->mb0_id);
 for (i = 0; i < get_mb_rx_first(priv); i++) {
  set_mb_mode(priv, i, AT91_MB_MODE_DISABLED);
  at91_write(priv, AT91_MID(i), reg_mid);
  at91_write(priv, AT91_MCR(i), 0x0);
 }

 for (i = get_mb_rx_first(priv); i < get_mb_rx_last(priv); i++)
  set_mb_mode(priv, i, AT91_MB_MODE_RX);
 set_mb_mode(priv, get_mb_rx_last(priv), AT91_MB_MODE_RX_OVRWR);


 for (i = get_mb_rx_first(priv); i <= get_mb_rx_last(priv); i++) {
  at91_write(priv, AT91_MAM(i), 0x0);
  at91_write(priv, AT91_MID(i), AT91_MID_MIDE);
 }


 for (i = get_mb_tx_first(priv); i <= get_mb_tx_last(priv); i++)
  set_mb_mode_prio(priv, i, AT91_MB_MODE_TX, 0);


 priv->tx_next = priv->tx_echo = 0;
 priv->rx_next = get_mb_rx_first(priv);
}
