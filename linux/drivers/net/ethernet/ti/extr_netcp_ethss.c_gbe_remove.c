
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netcp_device {int dummy; } ;
struct gbe_priv {int dev; int gbe_intf_head; int tx_pipe; int ale; int cpts; int timer; } ;


 int cpsw_ale_stop (int ) ;
 int cpts_release (int ) ;
 int del_timer_sync (int *) ;
 int dev_alert (int ,char*) ;
 int free_secondary_ports (struct gbe_priv*) ;
 int list_empty (int *) ;
 int netcp_txpipe_close (int *) ;

__attribute__((used)) static int gbe_remove(struct netcp_device *netcp_device, void *inst_priv)
{
 struct gbe_priv *gbe_dev = inst_priv;

 del_timer_sync(&gbe_dev->timer);
 cpts_release(gbe_dev->cpts);
 cpsw_ale_stop(gbe_dev->ale);
 netcp_txpipe_close(&gbe_dev->tx_pipe);
 free_secondary_ports(gbe_dev);

 if (!list_empty(&gbe_dev->gbe_intf_head))
  dev_alert(gbe_dev->dev,
     "unreleased ethss interfaces present\n");

 return 0;
}
