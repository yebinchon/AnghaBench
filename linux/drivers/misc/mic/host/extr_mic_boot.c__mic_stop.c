
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mic_device {int dma_mbdev; int scdev; int vpdev; } ;
struct cosm_device {int dummy; } ;


 struct mic_device* cosmdev_to_mdev (struct cosm_device*) ;
 int mbus_unregister_device (int ) ;
 int mic_bootparam_init (struct mic_device*) ;
 int mic_free_dma_chans (struct mic_device*) ;
 int scif_unregister_device (int ) ;
 int vop_unregister_device (int ) ;

__attribute__((used)) static void _mic_stop(struct cosm_device *cdev, bool force)
{
 struct mic_device *mdev = cosmdev_to_mdev(cdev);






 vop_unregister_device(mdev->vpdev);
 scif_unregister_device(mdev->scdev);
 mic_free_dma_chans(mdev);
 mbus_unregister_device(mdev->dma_mbdev);
 mic_bootparam_init(mdev);
}
