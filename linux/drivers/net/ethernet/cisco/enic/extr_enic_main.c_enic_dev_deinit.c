
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct enic {unsigned int rq_count; unsigned int wq_count; int * napi; int vdev; } ;


 scalar_t__ VNIC_DEV_INTR_MODE_MSIX ;
 int enic_clear_intr_mode (struct enic*) ;
 size_t enic_cq_wq (struct enic*,unsigned int) ;
 int enic_free_affinity_hint (struct enic*) ;
 int enic_free_vnic_resources (struct enic*) ;
 int napi_hash_del (int *) ;
 int netif_napi_del (int *) ;
 scalar_t__ vnic_dev_get_intr_mode (int ) ;

__attribute__((used)) static void enic_dev_deinit(struct enic *enic)
{
 unsigned int i;

 for (i = 0; i < enic->rq_count; i++) {
  napi_hash_del(&enic->napi[i]);
  netif_napi_del(&enic->napi[i]);
 }
 if (vnic_dev_get_intr_mode(enic->vdev) == VNIC_DEV_INTR_MODE_MSIX)
  for (i = 0; i < enic->wq_count; i++)
   netif_napi_del(&enic->napi[enic_cq_wq(enic, i)]);

 enic_free_vnic_resources(enic);
 enic_clear_intr_mode(enic);
 enic_free_affinity_hint(enic);
}
