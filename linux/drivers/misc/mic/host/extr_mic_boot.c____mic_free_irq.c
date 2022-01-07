
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scif_hw_dev {int dummy; } ;
struct mic_irq {int dummy; } ;
struct mic_device {int dummy; } ;


 int mic_free_irq (struct mic_device*,struct mic_irq*,void*) ;
 struct mic_device* scdev_to_mdev (struct scif_hw_dev*) ;

__attribute__((used)) static void
___mic_free_irq(struct scif_hw_dev *scdev,
  struct mic_irq *cookie, void *data)
{
 struct mic_device *mdev = scdev_to_mdev(scdev);

 mic_free_irq(mdev, cookie, data);
}
