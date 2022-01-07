
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct bnxt {int dummy; } ;


 int bnxt_close_nic (struct bnxt*,int,int) ;
 int bnxt_hwmon_close (struct bnxt*) ;
 int bnxt_hwrm_if_change (struct bnxt*,int) ;
 int bnxt_hwrm_shutdown_link (struct bnxt*) ;
 struct bnxt* netdev_priv (struct net_device*) ;

__attribute__((used)) static int bnxt_close(struct net_device *dev)
{
 struct bnxt *bp = netdev_priv(dev);

 bnxt_hwmon_close(bp);
 bnxt_close_nic(bp, 1, 1);
 bnxt_hwrm_shutdown_link(bp);
 bnxt_hwrm_if_change(bp, 0);
 return 0;
}
