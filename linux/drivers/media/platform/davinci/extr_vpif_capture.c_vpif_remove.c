
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct channel_obj {int video_dev; } ;
struct TYPE_2__ {struct channel_obj** dev; struct channel_obj* sd; int v4l2_dev; int notifier; } ;


 int VPIF_CAPTURE_MAX_DEVICES ;
 int kfree (struct channel_obj*) ;
 int v4l2_async_notifier_cleanup (int *) ;
 int v4l2_async_notifier_unregister (int *) ;
 int v4l2_device_unregister (int *) ;
 int video_unregister_device (int *) ;
 TYPE_1__ vpif_obj ;

__attribute__((used)) static int vpif_remove(struct platform_device *device)
{
 struct channel_obj *ch;
 int i;

 v4l2_async_notifier_unregister(&vpif_obj.notifier);
 v4l2_async_notifier_cleanup(&vpif_obj.notifier);
 v4l2_device_unregister(&vpif_obj.v4l2_dev);

 kfree(vpif_obj.sd);

 for (i = 0; i < VPIF_CAPTURE_MAX_DEVICES; i++) {

  ch = vpif_obj.dev[i];

  video_unregister_device(&ch->video_dev);
  kfree(vpif_obj.dev[i]);
 }
 return 0;
}
