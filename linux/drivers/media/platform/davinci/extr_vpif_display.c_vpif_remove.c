
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct channel_obj {int video_dev; } ;
struct TYPE_4__ {struct channel_obj** dev; int sd; int v4l2_dev; int notifier; TYPE_1__* config; } ;
struct TYPE_3__ {scalar_t__ asd_sizes; } ;


 int VPIF_DISPLAY_MAX_DEVICES ;
 int free_vpif_objs () ;
 int kfree (int ) ;
 int v4l2_async_notifier_cleanup (int *) ;
 int v4l2_async_notifier_unregister (int *) ;
 int v4l2_device_unregister (int *) ;
 int video_unregister_device (int *) ;
 TYPE_2__ vpif_obj ;

__attribute__((used)) static int vpif_remove(struct platform_device *device)
{
 struct channel_obj *ch;
 int i;

 if (vpif_obj.config->asd_sizes) {
  v4l2_async_notifier_unregister(&vpif_obj.notifier);
  v4l2_async_notifier_cleanup(&vpif_obj.notifier);
 }

 v4l2_device_unregister(&vpif_obj.v4l2_dev);

 kfree(vpif_obj.sd);

 for (i = 0; i < VPIF_DISPLAY_MAX_DEVICES; i++) {

  ch = vpif_obj.dev[i];

  video_unregister_device(&ch->video_dev);
 }
 free_vpif_objs();

 return 0;
}
