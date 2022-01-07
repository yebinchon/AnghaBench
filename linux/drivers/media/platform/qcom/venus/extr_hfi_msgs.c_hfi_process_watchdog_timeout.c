
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct venus_core {int dummy; } ;


 int EVT_SYS_WATCHDOG_TIMEOUT ;
 int event_sys_error (struct venus_core*,int ,int *) ;

void hfi_process_watchdog_timeout(struct venus_core *core)
{
 event_sys_error(core, EVT_SYS_WATCHDOG_TIMEOUT, ((void*)0));
}
