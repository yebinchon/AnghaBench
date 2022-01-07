
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kwqe {int dummy; } ;
struct TYPE_2__ {scalar_t__ pg_arr; } ;
struct cnic_local {int kcq1; TYPE_1__ kwq_info; struct kwqe** kwq; } ;
struct cnic_dev {struct cnic_local* cnic_priv; } ;


 int KWQ_PAGE_CNT ;
 int cnic_alloc_context (struct cnic_dev*) ;
 int cnic_alloc_dma (struct cnic_dev*,TYPE_1__*,int ,int) ;
 int cnic_alloc_kcq (struct cnic_dev*,int *,int) ;
 int cnic_alloc_uio_rings (struct cnic_dev*,int) ;
 int cnic_free_resc (struct cnic_dev*) ;
 int cnic_init_uio (struct cnic_dev*) ;

__attribute__((used)) static int cnic_alloc_bnx2_resc(struct cnic_dev *dev)
{
 struct cnic_local *cp = dev->cnic_priv;
 int ret;

 ret = cnic_alloc_dma(dev, &cp->kwq_info, KWQ_PAGE_CNT, 1);
 if (ret)
  goto error;
 cp->kwq = (struct kwqe **) cp->kwq_info.pg_arr;

 ret = cnic_alloc_kcq(dev, &cp->kcq1, 1);
 if (ret)
  goto error;

 ret = cnic_alloc_context(dev);
 if (ret)
  goto error;

 ret = cnic_alloc_uio_rings(dev, 2);
 if (ret)
  goto error;

 ret = cnic_init_uio(dev);
 if (ret)
  goto error;

 return 0;

error:
 cnic_free_resc(dev);
 return ret;
}
