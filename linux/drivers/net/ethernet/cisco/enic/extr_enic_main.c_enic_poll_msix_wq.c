
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnic_wq {unsigned int index; } ;
struct net_device {int dummy; } ;
struct napi_struct {struct net_device* dev; } ;
struct enic {int rq_count; int * intr; int * cq; struct vnic_wq* wq; struct napi_struct* napi; } ;


 unsigned int ENIC_WQ_NAPI_BUDGET ;
 unsigned int enic_cq_wq (struct enic*,unsigned int) ;
 unsigned int enic_msix_wq_intr (struct enic*,unsigned int) ;
 int enic_wq_service ;
 int napi_complete (struct napi_struct*) ;
 struct enic* netdev_priv (struct net_device*) ;
 unsigned int vnic_cq_service (int *,unsigned int,int ,int *) ;
 int vnic_intr_return_credits (int *,unsigned int,int ,int) ;
 int vnic_intr_unmask (int *) ;

__attribute__((used)) static int enic_poll_msix_wq(struct napi_struct *napi, int budget)
{
 struct net_device *netdev = napi->dev;
 struct enic *enic = netdev_priv(netdev);
 unsigned int wq_index = (napi - &enic->napi[0]) - enic->rq_count;
 struct vnic_wq *wq = &enic->wq[wq_index];
 unsigned int cq;
 unsigned int intr;
 unsigned int wq_work_to_do = ENIC_WQ_NAPI_BUDGET;
 unsigned int wq_work_done;
 unsigned int wq_irq;

 wq_irq = wq->index;
 cq = enic_cq_wq(enic, wq_irq);
 intr = enic_msix_wq_intr(enic, wq_irq);
 wq_work_done = vnic_cq_service(&enic->cq[cq], wq_work_to_do,
           enic_wq_service, ((void*)0));

 vnic_intr_return_credits(&enic->intr[intr], wq_work_done,
     0 ,
     1 );
 if (!wq_work_done) {
  napi_complete(napi);
  vnic_intr_unmask(&enic->intr[intr]);
  return 0;
 }

 return budget;
}
