
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_pwrseq {int pwrseq_node; } ;


 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pwrseq_list_mutex ;

void mmc_pwrseq_unregister(struct mmc_pwrseq *pwrseq)
{
 if (pwrseq) {
  mutex_lock(&pwrseq_list_mutex);
  list_del(&pwrseq->pwrseq_node);
  mutex_unlock(&pwrseq_list_mutex);
 }
}
