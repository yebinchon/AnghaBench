
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct napi_struct {struct net_device* dev; } ;
struct TYPE_2__ {scalar_t__ use_adaptive_rx_coalesce; } ;
struct enic {int * intr; int * rq; TYPE_1__ rx_coalesce_setting; int * cq; struct napi_struct* napi; } ;


 int enic_calc_int_moderation (struct enic*,int *) ;
 unsigned int enic_cq_rq (struct enic*,unsigned int) ;
 unsigned int enic_msix_rq_intr (struct enic*,unsigned int) ;
 int enic_rq_alloc_buf ;
 int enic_rq_service ;
 int enic_set_int_moderation (struct enic*,int *) ;
 scalar_t__ napi_complete_done (struct napi_struct*,unsigned int) ;
 struct enic* netdev_priv (struct net_device*) ;
 unsigned int vnic_cq_service (int *,unsigned int,int ,int *) ;
 int vnic_intr_return_credits (int *,unsigned int,int ,int ) ;
 int vnic_intr_unmask (int *) ;
 int vnic_rq_fill (int *,int ) ;

__attribute__((used)) static int enic_poll_msix_rq(struct napi_struct *napi, int budget)
{
 struct net_device *netdev = napi->dev;
 struct enic *enic = netdev_priv(netdev);
 unsigned int rq = (napi - &enic->napi[0]);
 unsigned int cq = enic_cq_rq(enic, rq);
 unsigned int intr = enic_msix_rq_intr(enic, rq);
 unsigned int work_to_do = budget;
 unsigned int work_done = 0;
 int err;




 if (budget > 0)
  work_done = vnic_cq_service(&enic->cq[cq],
   work_to_do, enic_rq_service, ((void*)0));






 if (work_done > 0)
  vnic_intr_return_credits(&enic->intr[intr],
   work_done,
   0 ,
   0 );

 err = vnic_rq_fill(&enic->rq[rq], enic_rq_alloc_buf);





 if (err)
  work_done = work_to_do;
 if (enic->rx_coalesce_setting.use_adaptive_rx_coalesce)



  enic_calc_int_moderation(enic, &enic->rq[rq]);

 if ((work_done < budget) && napi_complete_done(napi, work_done)) {





  if (enic->rx_coalesce_setting.use_adaptive_rx_coalesce)
   enic_set_int_moderation(enic, &enic->rq[rq]);
  vnic_intr_unmask(&enic->intr[intr]);
 }

 return work_done;
}
