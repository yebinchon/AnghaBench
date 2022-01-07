
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fimc_is {size_t config_index; struct chain_config* config; } ;
struct chain_config {int * p_region_index; } ;


 int set_bit (int,int *) ;

__attribute__((used)) static inline void fimc_is_set_param_bit(struct fimc_is *is, int num)
{
 struct chain_config *cfg = &is->config[is->config_index];

 set_bit(num, &cfg->p_region_index[0]);
}
