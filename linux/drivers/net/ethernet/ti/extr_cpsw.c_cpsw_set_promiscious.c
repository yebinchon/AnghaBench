
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct net_device {int dev; int mc; } ;
struct TYPE_6__ {int slaves; scalar_t__ dual_emac; } ;
struct cpsw_common {TYPE_3__ data; TYPE_2__* slaves; struct cpsw_ale* ale; } ;
struct cpsw_ale {int dummy; } ;
struct TYPE_5__ {TYPE_1__* ndev; } ;
struct TYPE_4__ {int flags; } ;


 int ALE_AGEOUT ;
 int ALE_ALL_PORTS ;
 int ALE_BYPASS ;
 int ALE_P0_UNI_FLOOD ;
 int ALE_PORT_NOLEARN ;
 int ALE_PORT_NO_SA_UPDATE ;
 unsigned long HZ ;
 int IFF_PROMISC ;
 int __hw_addr_ref_unsync_dev (int *,struct net_device*,int *) ;
 scalar_t__ cpsw_ale_control_get (struct cpsw_ale*,int ,int ) ;
 int cpsw_ale_control_set (struct cpsw_ale*,int,int ,int) ;
 int cpsw_ale_flush_multicast (struct cpsw_ale*,int ,int) ;
 int cpu_relax () ;
 int dev_dbg (int *,char*) ;
 int dev_err (int *,char*) ;
 unsigned long jiffies ;
 struct cpsw_common* ndev_to_cpsw (struct net_device*) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;

__attribute__((used)) static void cpsw_set_promiscious(struct net_device *ndev, bool enable)
{
 struct cpsw_common *cpsw = ndev_to_cpsw(ndev);
 struct cpsw_ale *ale = cpsw->ale;
 int i;

 if (cpsw->data.dual_emac) {
  bool flag = 0;





  for (i = 0; i < cpsw->data.slaves; i++)
   if (cpsw->slaves[i].ndev->flags & IFF_PROMISC)
    flag = 1;

  if (!enable && flag) {
   enable = 1;
   dev_err(&ndev->dev, "promiscuity not disabled as the other interface is still in promiscuity mode\n");
  }

  if (enable) {

   cpsw_ale_control_set(ale, 0, ALE_BYPASS, 1);

   dev_dbg(&ndev->dev, "promiscuity enabled\n");
  } else {

   cpsw_ale_control_set(ale, 0, ALE_BYPASS, 0);
   dev_dbg(&ndev->dev, "promiscuity disabled\n");
  }
 } else {
  if (enable) {
   unsigned long timeout = jiffies + HZ;


   for (i = 0; i <= cpsw->data.slaves; i++) {
    cpsw_ale_control_set(ale, i,
           ALE_PORT_NOLEARN, 1);
    cpsw_ale_control_set(ale, i,
           ALE_PORT_NO_SA_UPDATE, 1);
   }


   cpsw_ale_control_set(ale, 0, ALE_AGEOUT, 1);
   do {
    cpu_relax();
    if (cpsw_ale_control_get(ale, 0, ALE_AGEOUT))
     break;
   } while (time_after(timeout, jiffies));
   cpsw_ale_control_set(ale, 0, ALE_AGEOUT, 1);


   cpsw_ale_flush_multicast(ale, ALE_ALL_PORTS, -1);
   __hw_addr_ref_unsync_dev(&ndev->mc, ndev, ((void*)0));


   cpsw_ale_control_set(ale, 0, ALE_P0_UNI_FLOOD, 1);
   dev_dbg(&ndev->dev, "promiscuity enabled\n");
  } else {

   cpsw_ale_control_set(ale, 0, ALE_P0_UNI_FLOOD, 0);


   for (i = 0; i <= cpsw->data.slaves; i++) {
    cpsw_ale_control_set(ale, i,
           ALE_PORT_NOLEARN, 0);
    cpsw_ale_control_set(ale, i,
           ALE_PORT_NO_SA_UPDATE, 0);
   }
   dev_dbg(&ndev->dev, "promiscuity disabled\n");
  }
 }
}
