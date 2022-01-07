
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_fl_lag_group {int to_remove; } ;
struct nfp_fl_lag {int work; } ;


 int NFP_FL_LAG_DELAY ;
 int schedule_delayed_work (int *,int ) ;

__attribute__((used)) static void
nfp_fl_lag_schedule_group_remove(struct nfp_fl_lag *lag,
     struct nfp_fl_lag_group *group)
{
 group->to_remove = 1;

 schedule_delayed_work(&lag->work, NFP_FL_LAG_DELAY);
}
