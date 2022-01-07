
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netsec_priv {int dummy; } ;
struct net_device {int dummy; } ;


 int NETSEC_RING_RX ;
 int NETSEC_RING_TX ;
 struct netsec_priv* netdev_priv (struct net_device*) ;
 int netsec_free_dring (struct netsec_priv*,int ) ;

__attribute__((used)) static void netsec_netdev_uninit(struct net_device *ndev)
{
 struct netsec_priv *priv = netdev_priv(ndev);

 netsec_free_dring(priv, NETSEC_RING_RX);
 netsec_free_dring(priv, NETSEC_RING_TX);
}
