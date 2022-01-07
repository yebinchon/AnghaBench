
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct il_priv {int abort_scan; int workqueue; } ;


 int D_SCAN (char*) ;
 int queue_work (int ,int *) ;

int
il_scan_cancel(struct il_priv *il)
{
 D_SCAN("Queuing abort scan\n");
 queue_work(il->workqueue, &il->abort_scan);
 return 0;
}
