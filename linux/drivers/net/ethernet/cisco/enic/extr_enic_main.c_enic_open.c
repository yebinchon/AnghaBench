
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct enic {unsigned int rq_count; unsigned int wq_count; unsigned int intr_count; int * rq; int * intr; int * napi; int vdev; int * wq; } ;


 int ENOMEM ;
 scalar_t__ VNIC_DEV_INTR_MODE_MSIX ;
 size_t enic_cq_wq (struct enic*,unsigned int) ;
 int enic_dev_add_station_addr (struct enic*) ;
 int enic_dev_enable (struct enic*) ;
 int enic_dev_notify_set (struct enic*) ;
 int enic_dev_notify_unset (struct enic*) ;
 int enic_free_intr (struct enic*) ;
 int enic_free_rq_buf ;
 int enic_init_affinity_hint (struct enic*) ;
 int enic_is_dynamic (struct enic*) ;
 int enic_is_sriov_vf (struct enic*) ;
 int enic_notify_timer_start (struct enic*) ;
 int enic_request_intr (struct enic*) ;
 int enic_rfs_timer_start (struct enic*) ;
 int enic_rq_alloc_buf ;
 int enic_set_affinity_hint (struct enic*) ;
 int enic_set_rx_mode (struct net_device*) ;
 int enic_unset_affinity_hint (struct enic*) ;
 int napi_enable (int *) ;
 int netdev_err (struct net_device*,char*) ;
 struct enic* netdev_priv (struct net_device*) ;
 int netif_tx_wake_all_queues (struct net_device*) ;
 scalar_t__ vnic_dev_get_intr_mode (int ) ;
 int vnic_intr_unmask (int *) ;
 int vnic_rq_clean (int *,int ) ;
 scalar_t__ vnic_rq_desc_used (int *) ;
 int vnic_rq_disable (int *) ;
 int vnic_rq_enable (int *) ;
 int vnic_rq_fill (int *,int ) ;
 int vnic_wq_enable (int *) ;

__attribute__((used)) static int enic_open(struct net_device *netdev)
{
 struct enic *enic = netdev_priv(netdev);
 unsigned int i;
 int err, ret;

 err = enic_request_intr(enic);
 if (err) {
  netdev_err(netdev, "Unable to request irq.\n");
  return err;
 }
 enic_init_affinity_hint(enic);
 enic_set_affinity_hint(enic);

 err = enic_dev_notify_set(enic);
 if (err) {
  netdev_err(netdev,
   "Failed to alloc notify buffer, aborting.\n");
  goto err_out_free_intr;
 }

 for (i = 0; i < enic->rq_count; i++) {

  vnic_rq_enable(&enic->rq[i]);
  vnic_rq_fill(&enic->rq[i], enic_rq_alloc_buf);

  if (vnic_rq_desc_used(&enic->rq[i]) == 0) {
   netdev_err(netdev, "Unable to alloc receive buffers\n");
   err = -ENOMEM;
   goto err_out_free_rq;
  }
 }

 for (i = 0; i < enic->wq_count; i++)
  vnic_wq_enable(&enic->wq[i]);

 if (!enic_is_dynamic(enic) && !enic_is_sriov_vf(enic))
  enic_dev_add_station_addr(enic);

 enic_set_rx_mode(netdev);

 netif_tx_wake_all_queues(netdev);

 for (i = 0; i < enic->rq_count; i++)
  napi_enable(&enic->napi[i]);

 if (vnic_dev_get_intr_mode(enic->vdev) == VNIC_DEV_INTR_MODE_MSIX)
  for (i = 0; i < enic->wq_count; i++)
   napi_enable(&enic->napi[enic_cq_wq(enic, i)]);
 enic_dev_enable(enic);

 for (i = 0; i < enic->intr_count; i++)
  vnic_intr_unmask(&enic->intr[i]);

 enic_notify_timer_start(enic);
 enic_rfs_timer_start(enic);

 return 0;

err_out_free_rq:
 for (i = 0; i < enic->rq_count; i++) {
  ret = vnic_rq_disable(&enic->rq[i]);
  if (!ret)
   vnic_rq_clean(&enic->rq[i], enic_free_rq_buf);
 }
 enic_dev_notify_unset(enic);
err_out_free_intr:
 enic_unset_affinity_hint(enic);
 enic_free_intr(enic);

 return err;
}
