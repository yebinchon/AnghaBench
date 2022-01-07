
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cxgb4_netevent_nb ;
 int netevent_registered ;
 int register_netevent_notifier (int *) ;

void t4_register_netevent_notifier(void)
{
 if (!netevent_registered) {
  register_netevent_notifier(&cxgb4_netevent_nb);
  netevent_registered = 1;
 }
}
