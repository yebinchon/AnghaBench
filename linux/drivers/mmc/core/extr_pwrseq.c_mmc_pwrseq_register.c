
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_pwrseq {int pwrseq_node; int dev; int ops; } ;


 int EINVAL ;
 int list_add (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pwrseq_list ;
 int pwrseq_list_mutex ;

int mmc_pwrseq_register(struct mmc_pwrseq *pwrseq)
{
 if (!pwrseq || !pwrseq->ops || !pwrseq->dev)
  return -EINVAL;

 mutex_lock(&pwrseq_list_mutex);
 list_add(&pwrseq->pwrseq_node, &pwrseq_list);
 mutex_unlock(&pwrseq_list_mutex);

 return 0;
}
