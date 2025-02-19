
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct fec_enet_private {int wol_flag; } ;
struct ethtool_wolinfo {void* wolopts; void* supported; } ;


 int FEC_WOL_FLAG_ENABLE ;
 int FEC_WOL_HAS_MAGIC_PACKET ;
 void* WAKE_MAGIC ;
 struct fec_enet_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static void
fec_enet_get_wol(struct net_device *ndev, struct ethtool_wolinfo *wol)
{
 struct fec_enet_private *fep = netdev_priv(ndev);

 if (fep->wol_flag & FEC_WOL_HAS_MAGIC_PACKET) {
  wol->supported = WAKE_MAGIC;
  wol->wolopts = fep->wol_flag & FEC_WOL_FLAG_ENABLE ? WAKE_MAGIC : 0;
 } else {
  wol->supported = wol->wolopts = 0;
 }
}
