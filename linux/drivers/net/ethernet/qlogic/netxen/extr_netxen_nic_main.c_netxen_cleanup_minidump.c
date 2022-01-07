
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * md_capture_buff; int * md_template; } ;
struct netxen_adapter {TYPE_1__ mdump; } ;


 int kfree (int *) ;
 int vfree (int *) ;

__attribute__((used)) static
void netxen_cleanup_minidump(struct netxen_adapter *adapter)
{
 kfree(adapter->mdump.md_template);
 adapter->mdump.md_template = ((void*)0);

 if (adapter->mdump.md_capture_buff) {
  vfree(adapter->mdump.md_capture_buff);
  adapter->mdump.md_capture_buff = ((void*)0);
 }
}
