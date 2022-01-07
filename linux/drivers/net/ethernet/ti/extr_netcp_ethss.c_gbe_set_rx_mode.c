
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gbe_priv {int num_slaves; int dev; int ale_ports; struct cpsw_ale* ale; } ;
struct gbe_intf {struct gbe_priv* gbe_dev; } ;
struct cpsw_ale {int dummy; } ;


 int ALE_AGEOUT ;
 int ALE_P0_UNI_FLOOD ;
 int ALE_PORT_NOLEARN ;
 int ALE_PORT_NO_SA_UPDATE ;
 int ETIMEDOUT ;
 int GBE_PORT_MASK (int ) ;
 unsigned long HZ ;
 scalar_t__ cpsw_ale_control_get (struct cpsw_ale*,int ,int ) ;
 int cpsw_ale_control_set (struct cpsw_ale*,int,int ,int) ;
 int cpsw_ale_flush_multicast (struct cpsw_ale*,int ,int) ;
 int cpu_relax () ;
 int dev_vdbg (int ,char*) ;
 unsigned long jiffies ;
 scalar_t__ time_after (unsigned long,unsigned long) ;

__attribute__((used)) static int gbe_set_rx_mode(void *intf_priv, bool promisc)
{
 struct gbe_intf *gbe_intf = intf_priv;
 struct gbe_priv *gbe_dev = gbe_intf->gbe_dev;
 struct cpsw_ale *ale = gbe_dev->ale;
 unsigned long timeout;
 int i, ret = -ETIMEDOUT;




 for (i = 0; i <= gbe_dev->num_slaves; i++) {
  cpsw_ale_control_set(ale, i,
         ALE_PORT_NOLEARN, !!promisc);
  cpsw_ale_control_set(ale, i,
         ALE_PORT_NO_SA_UPDATE, !!promisc);
 }

 if (!promisc) {

  cpsw_ale_control_set(ale, 0, ALE_P0_UNI_FLOOD, 0);
  dev_vdbg(gbe_dev->dev, "promiscuous mode disabled\n");
  return 0;
 }

 timeout = jiffies + HZ;


 cpsw_ale_control_set(ale, 0, ALE_AGEOUT, 1);
 do {
  cpu_relax();
  if (cpsw_ale_control_get(ale, 0, ALE_AGEOUT)) {
   ret = 0;
   break;
  }

 } while (time_after(timeout, jiffies));


 if (ret && !cpsw_ale_control_get(ale, 0, ALE_AGEOUT))
  return ret;

 cpsw_ale_control_set(ale, 0, ALE_AGEOUT, 1);


 cpsw_ale_flush_multicast(ale,
     GBE_PORT_MASK(gbe_dev->ale_ports),
     -1);


 cpsw_ale_control_set(ale, 0, ALE_P0_UNI_FLOOD, 1);
 dev_vdbg(gbe_dev->dev, "promiscuous mode enabled\n");
 return ret;
}
