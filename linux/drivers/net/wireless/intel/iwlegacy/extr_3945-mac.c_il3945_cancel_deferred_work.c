
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct il_priv {int alive_start; int init_alive_start; } ;


 int cancel_delayed_work (int *) ;
 int cancel_delayed_work_sync (int *) ;
 int il3945_hw_cancel_deferred_work (struct il_priv*) ;
 int il_cancel_scan_deferred_work (struct il_priv*) ;

__attribute__((used)) static void
il3945_cancel_deferred_work(struct il_priv *il)
{
 il3945_hw_cancel_deferred_work(il);

 cancel_delayed_work_sync(&il->init_alive_start);
 cancel_delayed_work(&il->alive_start);

 il_cancel_scan_deferred_work(il);
}
