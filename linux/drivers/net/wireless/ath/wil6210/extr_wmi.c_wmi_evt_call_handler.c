
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint ;
struct wil6210_vif {int dummy; } ;
struct TYPE_3__ {int eventid; int (* handler ) (struct wil6210_vif*,int,void*,int) ;} ;


 size_t ARRAY_SIZE (TYPE_1__*) ;
 int stub1 (struct wil6210_vif*,int,void*,int) ;
 TYPE_1__* wmi_evt_handlers ;

__attribute__((used)) static bool wmi_evt_call_handler(struct wil6210_vif *vif, int id,
     void *d, int len)
{
 uint i;

 for (i = 0; i < ARRAY_SIZE(wmi_evt_handlers); i++) {
  if (wmi_evt_handlers[i].eventid == id) {
   wmi_evt_handlers[i].handler(vif, id, d, len);
   return 1;
  }
 }

 return 0;
}
