
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct enic {unsigned int rq_count; unsigned int wq_count; int * napi; int vdev; struct net_device* netdev; } ;
struct device {int dummy; } ;


 int NAPI_POLL_WEIGHT ;

 int dev_err (struct device*,char*) ;
 int dev_warn (struct device*,char*) ;
 int enic_alloc_vnic_resources (struct enic*) ;
 int enic_clear_intr_mode (struct enic*) ;
 size_t enic_cq_wq (struct enic*,unsigned int) ;
 int enic_dev_intr_coal_timer_info (struct enic*) ;
 int enic_free_affinity_hint (struct enic*) ;
 int enic_free_vnic_resources (struct enic*) ;
 struct device* enic_get_dev (struct enic*) ;
 int enic_get_res_counts (struct enic*) ;
 int enic_get_vnic_config (struct enic*) ;
 int enic_init_vnic_resources (struct enic*) ;
 int enic_kdump_kernel_config (struct enic*) ;
 int enic_poll ;
 int enic_poll_msix_rq ;
 int enic_poll_msix_wq ;
 int enic_set_intr_mode (struct enic*) ;
 int enic_set_rss_nic_cfg (struct enic*) ;
 int netif_napi_add (struct net_device*,int *,int ,int) ;
 int vnic_dev_get_intr_mode (int ) ;
 int vnic_dev_intr_coal_timer_info_default (int ) ;

__attribute__((used)) static int enic_dev_init(struct enic *enic)
{
 struct device *dev = enic_get_dev(enic);
 struct net_device *netdev = enic->netdev;
 unsigned int i;
 int err;


 err = enic_dev_intr_coal_timer_info(enic);
 if (err) {
  dev_warn(dev, "Using default conversion factor for "
   "interrupt coalesce timer\n");
  vnic_dev_intr_coal_timer_info_default(enic->vdev);
 }




 err = enic_get_vnic_config(enic);
 if (err) {
  dev_err(dev, "Get vNIC configuration failed, aborting\n");
  return err;
 }




 enic_get_res_counts(enic);



 enic_kdump_kernel_config(enic);





 err = enic_set_intr_mode(enic);
 if (err) {
  dev_err(dev, "Failed to set intr mode based on resource "
   "counts and system capabilities, aborting\n");
  return err;
 }




 err = enic_alloc_vnic_resources(enic);
 if (err) {
  dev_err(dev, "Failed to alloc vNIC resources, aborting\n");
  goto err_out_free_vnic_resources;
 }

 enic_init_vnic_resources(enic);

 err = enic_set_rss_nic_cfg(enic);
 if (err) {
  dev_err(dev, "Failed to config nic, aborting\n");
  goto err_out_free_vnic_resources;
 }

 switch (vnic_dev_get_intr_mode(enic->vdev)) {
 default:
  netif_napi_add(netdev, &enic->napi[0], enic_poll, 64);
  break;
 case 128:
  for (i = 0; i < enic->rq_count; i++) {
   netif_napi_add(netdev, &enic->napi[i],
    enic_poll_msix_rq, NAPI_POLL_WEIGHT);
  }
  for (i = 0; i < enic->wq_count; i++)
   netif_napi_add(netdev, &enic->napi[enic_cq_wq(enic, i)],
           enic_poll_msix_wq, NAPI_POLL_WEIGHT);
  break;
 }

 return 0;

err_out_free_vnic_resources:
 enic_free_affinity_hint(enic);
 enic_clear_intr_mode(enic);
 enic_free_vnic_resources(enic);

 return err;
}
