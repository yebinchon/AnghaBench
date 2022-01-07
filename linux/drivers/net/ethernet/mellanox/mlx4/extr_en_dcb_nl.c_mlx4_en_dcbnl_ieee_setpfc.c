
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u32 ;
struct net_device {int dummy; } ;
struct mlx4_en_priv {int stats_bitmap; scalar_t__ rx_skb_size; int port; struct mlx4_en_dev* mdev; struct mlx4_en_port_profile* prof; } ;
struct mlx4_en_port_profile {void* tx_pause; void* rx_pause; void* rx_ppp; void* tx_ppp; } ;
struct mlx4_en_dev {int dev; } ;
struct ieee_pfc {void* pfc_en; int delay; int mbc; int pfc_cap; } ;


 int DRV ;
 scalar_t__ ETH_FCS_LEN ;
 int en_dbg (int ,struct mlx4_en_priv*,char*,int ,void*,int ,int ) ;
 int en_err (struct mlx4_en_priv*,char*) ;
 int mlx4_SET_PORT_general (int ,int ,scalar_t__,void*,void*,void*,void*) ;
 int mlx4_en_update_pfc_stats_bitmap (int ,int *,void*,void*,void*,void*) ;
 struct mlx4_en_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int mlx4_en_dcbnl_ieee_setpfc(struct net_device *dev,
  struct ieee_pfc *pfc)
{
 struct mlx4_en_priv *priv = netdev_priv(dev);
 struct mlx4_en_port_profile *prof = priv->prof;
 struct mlx4_en_dev *mdev = priv->mdev;
 u32 tx_pause, tx_ppp, rx_pause, rx_ppp;
 int err;

 en_dbg(DRV, priv, "cap: 0x%x en: 0x%x mbc: 0x%x delay: %d\n",
   pfc->pfc_cap,
   pfc->pfc_en,
   pfc->mbc,
   pfc->delay);

 rx_pause = prof->rx_pause && !pfc->pfc_en;
 tx_pause = prof->tx_pause && !pfc->pfc_en;
 rx_ppp = pfc->pfc_en;
 tx_ppp = pfc->pfc_en;

 err = mlx4_SET_PORT_general(mdev->dev, priv->port,
        priv->rx_skb_size + ETH_FCS_LEN,
        tx_pause, tx_ppp, rx_pause, rx_ppp);
 if (err) {
  en_err(priv, "Failed setting pause params\n");
  return err;
 }

 mlx4_en_update_pfc_stats_bitmap(mdev->dev, &priv->stats_bitmap,
     rx_ppp, rx_pause, tx_ppp, tx_pause);

 prof->tx_ppp = tx_ppp;
 prof->rx_ppp = rx_ppp;
 prof->rx_pause = rx_pause;
 prof->tx_pause = tx_pause;

 return err;
}
