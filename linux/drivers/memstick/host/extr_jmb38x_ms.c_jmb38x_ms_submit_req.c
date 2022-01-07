
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct memstick_host {int dummy; } ;
struct jmb38x_ms_host {int notify; } ;


 struct jmb38x_ms_host* memstick_priv (struct memstick_host*) ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static void jmb38x_ms_submit_req(struct memstick_host *msh)
{
 struct jmb38x_ms_host *host = memstick_priv(msh);

 tasklet_schedule(&host->notify);
}
