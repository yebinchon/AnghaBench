
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubi_volume {int dummy; } ;
struct ubi_notification {int vi; int di; } ;
struct ubi_device {int dummy; } ;






 int blocking_notifier_call_chain (int *,int,struct ubi_notification*) ;
 int ubi_do_get_device_info (struct ubi_device*,int *) ;
 int ubi_do_get_volume_info (struct ubi_device*,struct ubi_volume*,int *) ;
 int ubi_msg (struct ubi_device*,char*,int) ;
 int ubi_notifiers ;
 int ubi_update_fastmap (struct ubi_device*) ;

int ubi_volume_notify(struct ubi_device *ubi, struct ubi_volume *vol, int ntype)
{
 int ret;
 struct ubi_notification nt;

 ubi_do_get_device_info(ubi, &nt.di);
 ubi_do_get_volume_info(ubi, vol, &nt.vi);

 switch (ntype) {
 case 131:
 case 130:
 case 128:
 case 129:
  ret = ubi_update_fastmap(ubi);
  if (ret)
   ubi_msg(ubi, "Unable to write a new fastmap: %i", ret);
 }

 return blocking_notifier_call_chain(&ubi_notifiers, ntype, &nt);
}
