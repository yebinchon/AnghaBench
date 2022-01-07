
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_fl_lag {int rst_cfg; } ;
typedef enum nfp_fl_lag_batch { ____Placeholder_nfp_fl_lag_batch } nfp_fl_lag_batch ;


 int NFP_FL_LAG_BATCH_FIRST ;
 int nfp_fl_lag_config_group (struct nfp_fl_lag*,int *,int *,int ,int*) ;

int nfp_flower_lag_reset(struct nfp_fl_lag *lag)
{
 enum nfp_fl_lag_batch batch = NFP_FL_LAG_BATCH_FIRST;

 lag->rst_cfg = 1;
 return nfp_fl_lag_config_group(lag, ((void*)0), ((void*)0), 0, &batch);
}
