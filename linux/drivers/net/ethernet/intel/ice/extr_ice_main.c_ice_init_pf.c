
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ice_pf {int * avail_txqs; TYPE_1__* pdev; void* avail_rxqs; int max_pf_rxqs; int max_pf_txqs; int avail_q_mutex; int state; int serv_task; int serv_tmr_period; int serv_tmr; int sw_mutex; } ;
struct TYPE_2__ {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int HZ ;
 int INIT_WORK (int *,int ) ;
 int __ICE_SERVICE_SCHED ;
 void* bitmap_zalloc (int ,int ) ;
 int clear_bit (int ,int ) ;
 int devm_kfree (int *,int *) ;
 int ice_service_task ;
 int ice_service_timer ;
 int ice_set_pf_caps (struct ice_pf*) ;
 int mutex_init (int *) ;
 int timer_setup (int *,int ,int ) ;

__attribute__((used)) static int ice_init_pf(struct ice_pf *pf)
{
 ice_set_pf_caps(pf);

 mutex_init(&pf->sw_mutex);


 timer_setup(&pf->serv_tmr, ice_service_timer, 0);
 pf->serv_tmr_period = HZ;
 INIT_WORK(&pf->serv_task, ice_service_task);
 clear_bit(__ICE_SERVICE_SCHED, pf->state);

 mutex_init(&pf->avail_q_mutex);
 pf->avail_txqs = bitmap_zalloc(pf->max_pf_txqs, GFP_KERNEL);
 if (!pf->avail_txqs)
  return -ENOMEM;

 pf->avail_rxqs = bitmap_zalloc(pf->max_pf_rxqs, GFP_KERNEL);
 if (!pf->avail_rxqs) {
  devm_kfree(&pf->pdev->dev, pf->avail_txqs);
  pf->avail_txqs = ((void*)0);
  return -ENOMEM;
 }

 return 0;
}
