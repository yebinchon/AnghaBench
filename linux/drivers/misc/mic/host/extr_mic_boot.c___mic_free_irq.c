
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vop_device {int dev; } ;
struct mic_irq {int dummy; } ;
struct mic_device {int dummy; } ;


 int mic_free_irq (struct mic_device*,struct mic_irq*,void*) ;
 struct mic_device* vpdev_to_mdev (int *) ;

__attribute__((used)) static void __mic_free_irq(struct vop_device *vpdev,
      struct mic_irq *cookie, void *data)
{
 struct mic_device *mdev = vpdev_to_mdev(&vpdev->dev);

 mic_free_irq(mdev, cookie, data);
}
