
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ice_pf {int * avail_rxqs; int * avail_txqs; int avail_q_mutex; int sw_mutex; } ;


 int bitmap_free (int *) ;
 int ice_service_task_stop (struct ice_pf*) ;
 int mutex_destroy (int *) ;

__attribute__((used)) static void ice_deinit_pf(struct ice_pf *pf)
{
 ice_service_task_stop(pf);
 mutex_destroy(&pf->sw_mutex);
 mutex_destroy(&pf->avail_q_mutex);

 if (pf->avail_txqs) {
  bitmap_free(pf->avail_txqs);
  pf->avail_txqs = ((void*)0);
 }

 if (pf->avail_rxqs) {
  bitmap_free(pf->avail_rxqs);
  pf->avail_rxqs = ((void*)0);
 }
}
