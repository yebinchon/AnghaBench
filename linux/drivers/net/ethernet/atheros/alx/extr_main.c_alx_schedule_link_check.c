
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct alx_priv {int link_check_wk; } ;


 int schedule_work (int *) ;

__attribute__((used)) static void alx_schedule_link_check(struct alx_priv *alx)
{
 schedule_work(&alx->link_check_wk);
}
