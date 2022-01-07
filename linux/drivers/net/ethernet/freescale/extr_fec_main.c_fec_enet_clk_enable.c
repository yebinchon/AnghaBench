
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int phydev; } ;
struct fec_enet_private {int ptp_clk_on; scalar_t__ clk_enet_out; scalar_t__ clk_ref; int ptp_clk_mutex; scalar_t__ clk_ptp; } ;


 int clk_disable_unprepare (scalar_t__) ;
 int clk_prepare_enable (scalar_t__) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct fec_enet_private* netdev_priv (struct net_device*) ;
 int phy_reset_after_clk_enable (int ) ;

__attribute__((used)) static int fec_enet_clk_enable(struct net_device *ndev, bool enable)
{
 struct fec_enet_private *fep = netdev_priv(ndev);
 int ret;

 if (enable) {
  ret = clk_prepare_enable(fep->clk_enet_out);
  if (ret)
   return ret;

  if (fep->clk_ptp) {
   mutex_lock(&fep->ptp_clk_mutex);
   ret = clk_prepare_enable(fep->clk_ptp);
   if (ret) {
    mutex_unlock(&fep->ptp_clk_mutex);
    goto failed_clk_ptp;
   } else {
    fep->ptp_clk_on = 1;
   }
   mutex_unlock(&fep->ptp_clk_mutex);
  }

  ret = clk_prepare_enable(fep->clk_ref);
  if (ret)
   goto failed_clk_ref;

  phy_reset_after_clk_enable(ndev->phydev);
 } else {
  clk_disable_unprepare(fep->clk_enet_out);
  if (fep->clk_ptp) {
   mutex_lock(&fep->ptp_clk_mutex);
   clk_disable_unprepare(fep->clk_ptp);
   fep->ptp_clk_on = 0;
   mutex_unlock(&fep->ptp_clk_mutex);
  }
  clk_disable_unprepare(fep->clk_ref);
 }

 return 0;

failed_clk_ref:
 if (fep->clk_ref)
  clk_disable_unprepare(fep->clk_ref);
failed_clk_ptp:
 if (fep->clk_enet_out)
  clk_disable_unprepare(fep->clk_enet_out);

 return ret;
}
