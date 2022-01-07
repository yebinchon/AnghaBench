
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int vol_type; } ;
struct ubi_notification {TYPE_1__ vi; } ;
struct notifier_block {int dummy; } ;


 int NOTIFY_OK ;
 int UBI_STATIC_VOLUME ;




 int ubiblock_remove (TYPE_1__*) ;
 int ubiblock_resize (TYPE_1__*) ;

__attribute__((used)) static int ubiblock_notify(struct notifier_block *nb,
    unsigned long notification_type, void *ns_ptr)
{
 struct ubi_notification *nt = ns_ptr;

 switch (notification_type) {
 case 131:




  break;
 case 130:
  ubiblock_remove(&nt->vi);
  break;
 case 129:
  ubiblock_resize(&nt->vi);
  break;
 case 128:




  if (nt->vi.vol_type == UBI_STATIC_VOLUME)
   ubiblock_resize(&nt->vi);
  break;
 default:
  break;
 }
 return NOTIFY_OK;
}
