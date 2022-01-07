
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int dummy; } ;
struct be_resources {scalar_t__ max_rss_qs; scalar_t__ max_rx_qs; int if_cap_flags; int max_nic_evt_qs; int max_evt_qs; int member_0; } ;
struct be_adapter {int need_def_rxq; int cfg_num_rx_irqs; int cfg_num_tx_irqs; struct be_resources res; TYPE_1__* pdev; } ;
struct TYPE_2__ {struct device dev; } ;


 int BE_IF_FLAGS_DEFQ_RSS ;
 scalar_t__ BEx_chip (struct be_adapter*) ;
 int BEx_get_resources (struct be_adapter*,struct be_resources*) ;
 int be_cmd_get_func_config (struct be_adapter*,struct be_resources*) ;
 int be_if_cap_flags (struct be_adapter*) ;
 int be_max_mc (struct be_adapter*) ;
 int be_max_nic_eqs (struct be_adapter*) ;
 int be_max_qp_irqs (struct be_adapter*) ;
 int be_max_rss (struct be_adapter*) ;
 int be_max_rxqs (struct be_adapter*) ;
 int be_max_txqs (struct be_adapter*) ;
 int be_max_uc (struct be_adapter*) ;
 int be_max_vfs (struct be_adapter*) ;
 int be_max_vlans (struct be_adapter*) ;
 scalar_t__ be_roce_supported (struct be_adapter*) ;
 int dev_info (struct device*,char*,int ,int ,int ,...) ;
 int min_t (int ,int ,int ) ;
 int netif_get_num_default_rss_queues () ;
 int u16 ;

__attribute__((used)) static int be_get_resources(struct be_adapter *adapter)
{
 struct device *dev = &adapter->pdev->dev;
 struct be_resources res = {0};
 int status;





 if (BEx_chip(adapter)) {
  BEx_get_resources(adapter, &res);
 } else {
  status = be_cmd_get_func_config(adapter, &res);
  if (status)
   return status;


  if (res.max_rss_qs && res.max_rss_qs == res.max_rx_qs &&
      !(res.if_cap_flags & BE_IF_FLAGS_DEFQ_RSS))
   res.max_rss_qs -= 1;
 }


 res.max_nic_evt_qs = be_roce_supported(adapter) ?
    res.max_evt_qs / 2 : res.max_evt_qs;
 adapter->res = res;




 adapter->need_def_rxq = (be_if_cap_flags(adapter) &
     BE_IF_FLAGS_DEFQ_RSS) ? 0 : 1;

 dev_info(dev, "Max: txqs %d, rxqs %d, rss %d, eqs %d, vfs %d\n",
   be_max_txqs(adapter), be_max_rxqs(adapter),
   be_max_rss(adapter), be_max_nic_eqs(adapter),
   be_max_vfs(adapter));
 dev_info(dev, "Max: uc-macs %d, mc-macs %d, vlans %d\n",
   be_max_uc(adapter), be_max_mc(adapter),
   be_max_vlans(adapter));


 adapter->cfg_num_rx_irqs =
    min_t(u16, netif_get_num_default_rss_queues(),
          be_max_qp_irqs(adapter));
 adapter->cfg_num_tx_irqs = adapter->cfg_num_rx_irqs;
 return 0;
}
