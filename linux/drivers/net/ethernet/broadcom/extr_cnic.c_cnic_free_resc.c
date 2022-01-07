
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct cnic_uio_dev {int uio_dev; int * dev; } ;
struct TYPE_4__ {int dma; } ;
struct TYPE_3__ {int dma; } ;
struct cnic_local {int cid_tbl; int fcoe_cid_tbl; int * ctx_tbl; int * iscsi_tbl; TYPE_2__ kcq1; TYPE_1__ kcq2; int kwq_16_data_info; int kwq_info; int gbl_buf_info; scalar_t__ ctx_blks; int * ctx_arr; struct cnic_uio_dev* udev; } ;
struct cnic_dev {struct cnic_local* cnic_priv; } ;


 int __cnic_free_uio_rings (struct cnic_uio_dev*) ;
 int cnic_free_context (struct cnic_dev*) ;
 int cnic_free_dma (struct cnic_dev*,int *) ;
 int cnic_free_id_tbl (int *) ;
 int kfree (int *) ;

__attribute__((used)) static void cnic_free_resc(struct cnic_dev *dev)
{
 struct cnic_local *cp = dev->cnic_priv;
 struct cnic_uio_dev *udev = cp->udev;

 if (udev) {
  udev->dev = ((void*)0);
  cp->udev = ((void*)0);
  if (udev->uio_dev == -1)
   __cnic_free_uio_rings(udev);
 }

 cnic_free_context(dev);
 kfree(cp->ctx_arr);
 cp->ctx_arr = ((void*)0);
 cp->ctx_blks = 0;

 cnic_free_dma(dev, &cp->gbl_buf_info);
 cnic_free_dma(dev, &cp->kwq_info);
 cnic_free_dma(dev, &cp->kwq_16_data_info);
 cnic_free_dma(dev, &cp->kcq2.dma);
 cnic_free_dma(dev, &cp->kcq1.dma);
 kfree(cp->iscsi_tbl);
 cp->iscsi_tbl = ((void*)0);
 kfree(cp->ctx_tbl);
 cp->ctx_tbl = ((void*)0);

 cnic_free_id_tbl(&cp->fcoe_cid_tbl);
 cnic_free_id_tbl(&cp->cid_tbl);
}
