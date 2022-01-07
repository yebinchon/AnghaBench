
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcar_drif_sdr {int v4l2_dev; int notifier; } ;


 int v4l2_async_notifier_cleanup (int *) ;
 int v4l2_async_notifier_unregister (int *) ;
 int v4l2_device_unregister (int *) ;

__attribute__((used)) static void rcar_drif_sdr_remove(struct rcar_drif_sdr *sdr)
{
 v4l2_async_notifier_unregister(&sdr->notifier);
 v4l2_async_notifier_cleanup(&sdr->notifier);
 v4l2_device_unregister(&sdr->v4l2_dev);
}
