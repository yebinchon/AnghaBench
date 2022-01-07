
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int mtu; } ;
struct TYPE_2__ {int mtu; } ;
struct alx_priv {int rxbuf_size; TYPE_1__ hw; } ;


 int ALX_DEF_RXBUF_SIZE ;
 int ALX_MAX_FRAME_LEN (int) ;
 int alx_reinit (struct alx_priv*) ;
 int max (int,int ) ;
 struct alx_priv* netdev_priv (struct net_device*) ;
 int netdev_update_features (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;

__attribute__((used)) static int alx_change_mtu(struct net_device *netdev, int mtu)
{
 struct alx_priv *alx = netdev_priv(netdev);
 int max_frame = ALX_MAX_FRAME_LEN(mtu);

 netdev->mtu = mtu;
 alx->hw.mtu = mtu;
 alx->rxbuf_size = max(max_frame, ALX_DEF_RXBUF_SIZE);
 netdev_update_features(netdev);
 if (netif_running(netdev))
  alx_reinit(alx);
 return 0;
}
