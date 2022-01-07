
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct napi_struct {struct net_device* dev; } ;
struct TYPE_2__ {scalar_t__ use_adaptive_rx_coalesce; } ;
struct enic {int * intr; int * rq; TYPE_1__ rx_coalesce_setting; int * cq; } ;


 unsigned int ENIC_WQ_NAPI_BUDGET ;
 int enic_calc_int_moderation (struct enic*,int *) ;
 unsigned int enic_cq_rq (struct enic*,int ) ;
 unsigned int enic_cq_wq (struct enic*,int ) ;
 unsigned int enic_legacy_io_intr () ;
 int enic_rq_alloc_buf ;
 int enic_rq_service ;
 int enic_set_int_moderation (struct enic*,int *) ;
 int enic_wq_service ;
 scalar_t__ napi_complete_done (struct napi_struct*,unsigned int) ;
 struct enic* netdev_priv (struct net_device*) ;
 unsigned int vnic_cq_service (int *,unsigned int,int ,int *) ;
 int vnic_intr_return_credits (int *,unsigned int,int ,int ) ;
 int vnic_intr_unmask (int *) ;
 int vnic_rq_fill (int *,int ) ;

__attribute__((used)) static int enic_poll(struct napi_struct *napi, int budget)
{
 struct net_device *netdev = napi->dev;
 struct enic *enic = netdev_priv(netdev);
 unsigned int cq_rq = enic_cq_rq(enic, 0);
 unsigned int cq_wq = enic_cq_wq(enic, 0);
 unsigned int intr = enic_legacy_io_intr();
 unsigned int rq_work_to_do = budget;
 unsigned int wq_work_to_do = ENIC_WQ_NAPI_BUDGET;
 unsigned int work_done, rq_work_done = 0, wq_work_done;
 int err;

 wq_work_done = vnic_cq_service(&enic->cq[cq_wq], wq_work_to_do,
           enic_wq_service, ((void*)0));

 if (budget > 0)
  rq_work_done = vnic_cq_service(&enic->cq[cq_rq],
   rq_work_to_do, enic_rq_service, ((void*)0));






 work_done = rq_work_done + wq_work_done;

 if (work_done > 0)
  vnic_intr_return_credits(&enic->intr[intr],
   work_done,
   0 ,
   0 );

 err = vnic_rq_fill(&enic->rq[0], enic_rq_alloc_buf);





 if (err)
  rq_work_done = rq_work_to_do;
 if (enic->rx_coalesce_setting.use_adaptive_rx_coalesce)



  enic_calc_int_moderation(enic, &enic->rq[0]);

 if ((rq_work_done < budget) && napi_complete_done(napi, rq_work_done)) {





  if (enic->rx_coalesce_setting.use_adaptive_rx_coalesce)
   enic_set_int_moderation(enic, &enic->rq[0]);
  vnic_intr_unmask(&enic->intr[intr]);
 }

 return rq_work_done;
}
