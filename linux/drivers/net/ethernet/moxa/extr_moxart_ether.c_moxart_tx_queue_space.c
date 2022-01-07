
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct moxart_mac_priv_t {int tx_tail; int tx_head; } ;


 int CIRC_SPACE (int ,int ,int ) ;
 int TX_DESC_NUM ;
 struct moxart_mac_priv_t* netdev_priv (struct net_device*) ;

__attribute__((used)) static int moxart_tx_queue_space(struct net_device *ndev)
{
 struct moxart_mac_priv_t *priv = netdev_priv(ndev);

 return CIRC_SPACE(priv->tx_head, priv->tx_tail, TX_DESC_NUM);
}
