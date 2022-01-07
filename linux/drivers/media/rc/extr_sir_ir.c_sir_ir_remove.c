
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int del_timer_sync (int *) ;
 int drop_hardware () ;
 int timerlist ;

__attribute__((used)) static int sir_ir_remove(struct platform_device *dev)
{
 drop_hardware();
 del_timer_sync(&timerlist);
 return 0;
}
