
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wq_enet_desc {int dummy; } ;
struct rq_enet_desc {int dummy; } ;
struct TYPE_2__ {int wq_desc_count; int rq_desc_count; } ;
struct enic {unsigned int wq_count; unsigned int rq_count; unsigned int cq_count; unsigned int intr_count; int legacy_pba; int vdev; int * intr; TYPE_1__ config; int * cq; int * rq; int * wq; } ;
struct cq_enet_wq_desc {int dummy; } ;
struct cq_enet_rq_desc {int dummy; } ;
typedef enum vnic_dev_intr_mode { ____Placeholder_vnic_dev_intr_mode } vnic_dev_intr_mode ;


 int ENODEV ;
 int RES_TYPE_INTR_PBA_LEGACY ;
 int VNIC_DEV_INTR_MODE_INTX ;
 int VNIC_DEV_INTR_MODE_MSI ;
 int VNIC_DEV_INTR_MODE_MSIX ;
 int dev_err (int ,char*) ;
 int dev_info (int ,char*,unsigned int,unsigned int,unsigned int,unsigned int,char*) ;
 int enic_free_vnic_resources (struct enic*) ;
 int enic_get_dev (struct enic*) ;
 int vnic_cq_alloc (int ,int *,unsigned int,int ,int) ;
 int vnic_dev_get_intr_mode (int ) ;
 int vnic_dev_get_res (int ,int ,int ) ;
 int vnic_intr_alloc (int ,int *,unsigned int) ;
 int vnic_rq_alloc (int ,int *,unsigned int,int ,int) ;
 int vnic_wq_alloc (int ,int *,unsigned int,int ,int) ;

int enic_alloc_vnic_resources(struct enic *enic)
{
 enum vnic_dev_intr_mode intr_mode;
 unsigned int i;
 int err;

 intr_mode = vnic_dev_get_intr_mode(enic->vdev);

 dev_info(enic_get_dev(enic), "vNIC resources used:  "
  "wq %d rq %d cq %d intr %d intr mode %s\n",
  enic->wq_count, enic->rq_count,
  enic->cq_count, enic->intr_count,
  intr_mode == VNIC_DEV_INTR_MODE_INTX ? "legacy PCI INTx" :
  intr_mode == VNIC_DEV_INTR_MODE_MSI ? "MSI" :
  intr_mode == VNIC_DEV_INTR_MODE_MSIX ? "MSI-X" :
  "unknown");




 for (i = 0; i < enic->wq_count; i++) {
  err = vnic_wq_alloc(enic->vdev, &enic->wq[i], i,
   enic->config.wq_desc_count,
   sizeof(struct wq_enet_desc));
  if (err)
   goto err_out_cleanup;
 }

 for (i = 0; i < enic->rq_count; i++) {
  err = vnic_rq_alloc(enic->vdev, &enic->rq[i], i,
   enic->config.rq_desc_count,
   sizeof(struct rq_enet_desc));
  if (err)
   goto err_out_cleanup;
 }

 for (i = 0; i < enic->cq_count; i++) {
  if (i < enic->rq_count)
   err = vnic_cq_alloc(enic->vdev, &enic->cq[i], i,
    enic->config.rq_desc_count,
    sizeof(struct cq_enet_rq_desc));
  else
   err = vnic_cq_alloc(enic->vdev, &enic->cq[i], i,
    enic->config.wq_desc_count,
    sizeof(struct cq_enet_wq_desc));
  if (err)
   goto err_out_cleanup;
 }

 for (i = 0; i < enic->intr_count; i++) {
  err = vnic_intr_alloc(enic->vdev, &enic->intr[i], i);
  if (err)
   goto err_out_cleanup;
 }




 enic->legacy_pba = vnic_dev_get_res(enic->vdev,
  RES_TYPE_INTR_PBA_LEGACY, 0);
 if (!enic->legacy_pba && intr_mode == VNIC_DEV_INTR_MODE_INTX) {
  dev_err(enic_get_dev(enic),
   "Failed to hook legacy pba resource\n");
  err = -ENODEV;
  goto err_out_cleanup;
 }

 return 0;

err_out_cleanup:
 enic_free_vnic_resources(enic);

 return err;
}
