
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct mwifiex_adapter {int dummy; } ;


 struct mwifiex_adapter* adapter ;
 int devdump_timer ;
 struct mwifiex_adapter* from_timer (int ,struct timer_list*,int ) ;
 int mwifiex_upload_device_dump (struct mwifiex_adapter*) ;

__attribute__((used)) static void fw_dump_timer_fn(struct timer_list *t)
{
 struct mwifiex_adapter *adapter = from_timer(adapter, t, devdump_timer);

 mwifiex_upload_device_dump(adapter);
}
