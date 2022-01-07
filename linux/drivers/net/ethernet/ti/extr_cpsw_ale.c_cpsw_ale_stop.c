
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpsw_ale {int timer; } ;


 int ALE_ENABLE ;
 int cpsw_ale_control_set (struct cpsw_ale*,int ,int ,int ) ;
 int del_timer_sync (int *) ;

void cpsw_ale_stop(struct cpsw_ale *ale)
{
 del_timer_sync(&ale->timer);
 cpsw_ale_control_set(ale, 0, ALE_ENABLE, 0);
}
