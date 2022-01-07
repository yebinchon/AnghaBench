
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmballoon {int dwork; } ;


 int VMW_BALLOON_STAT_DOORBELL ;
 int mod_delayed_work (int ,int *,int ) ;
 int system_freezable_wq ;
 int vmballoon_stats_gen_inc (struct vmballoon*,int ) ;

__attribute__((used)) static void vmballoon_doorbell(void *client_data)
{
 struct vmballoon *b = client_data;

 vmballoon_stats_gen_inc(b, VMW_BALLOON_STAT_DOORBELL);

 mod_delayed_work(system_freezable_wq, &b->dwork, 0);
}
