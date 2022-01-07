
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct peak_usb_adapter {int dummy; } ;
struct peak_time_ref {struct peak_usb_adapter const* adapter; } ;


 int memset (struct peak_time_ref*,int ,int) ;

void peak_usb_init_time_ref(struct peak_time_ref *time_ref,
       const struct peak_usb_adapter *adapter)
{
 if (time_ref) {
  memset(time_ref, 0, sizeof(struct peak_time_ref));
  time_ref->adapter = adapter;
 }
}
