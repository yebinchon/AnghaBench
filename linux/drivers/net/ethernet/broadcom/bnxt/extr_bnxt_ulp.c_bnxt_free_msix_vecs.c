
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct bnxt_en_dev {int flags; TYPE_1__* ulp_tbl; struct net_device* net; } ;
struct bnxt {int dummy; } ;
struct TYPE_2__ {scalar_t__ msix_requested; } ;


 int ASSERT_RTNL () ;
 int BNXT_EN_FLAG_MSIX_REQUESTED ;
 int BNXT_ROCE_ULP ;
 int EINVAL ;
 int bnxt_close_nic (struct bnxt*,int,int) ;
 int bnxt_open_nic (struct bnxt*,int,int) ;
 struct bnxt* netdev_priv (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;

__attribute__((used)) static int bnxt_free_msix_vecs(struct bnxt_en_dev *edev, int ulp_id)
{
 struct net_device *dev = edev->net;
 struct bnxt *bp = netdev_priv(dev);

 ASSERT_RTNL();
 if (ulp_id != BNXT_ROCE_ULP)
  return -EINVAL;

 if (!(edev->flags & BNXT_EN_FLAG_MSIX_REQUESTED))
  return 0;

 edev->ulp_tbl[ulp_id].msix_requested = 0;
 edev->flags &= ~BNXT_EN_FLAG_MSIX_REQUESTED;
 if (netif_running(dev)) {
  bnxt_close_nic(bp, 1, 0);
  bnxt_open_nic(bp, 1, 0);
 }
 return 0;
}
