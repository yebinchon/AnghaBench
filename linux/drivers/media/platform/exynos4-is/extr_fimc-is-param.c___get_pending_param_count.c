
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fimc_is {size_t config_index; int slock; struct chain_config* config; } ;
struct chain_config {int * p_region_index; } ;


 unsigned int hweight32 (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

unsigned int __get_pending_param_count(struct fimc_is *is)
{
 struct chain_config *config = &is->config[is->config_index];
 unsigned long flags;
 unsigned int count;

 spin_lock_irqsave(&is->slock, flags);
 count = hweight32(config->p_region_index[0]);
 count += hweight32(config->p_region_index[1]);
 spin_unlock_irqrestore(&is->slock, flags);

 return count;
}
