
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct enic {void* intr_count; void* cq_count; void* rq_count; void* wq_count; int vdev; } ;


 int RES_TYPE_CQ ;
 int RES_TYPE_INTR_CTRL ;
 int RES_TYPE_RQ ;
 int RES_TYPE_WQ ;
 int dev_info (int ,char*,void*,void*,void*,void*) ;
 int enic_get_dev (struct enic*) ;
 void* vnic_dev_get_res_count (int ,int ) ;

void enic_get_res_counts(struct enic *enic)
{
 enic->wq_count = vnic_dev_get_res_count(enic->vdev, RES_TYPE_WQ);
 enic->rq_count = vnic_dev_get_res_count(enic->vdev, RES_TYPE_RQ);
 enic->cq_count = vnic_dev_get_res_count(enic->vdev, RES_TYPE_CQ);
 enic->intr_count = vnic_dev_get_res_count(enic->vdev,
  RES_TYPE_INTR_CTRL);

 dev_info(enic_get_dev(enic),
  "vNIC resources avail: wq %d rq %d cq %d intr %d\n",
  enic->wq_count, enic->rq_count,
  enic->cq_count, enic->intr_count);
}
