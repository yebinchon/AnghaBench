
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mic_irq {int dummy; } ;
struct mbus_device {int dummy; } ;


 int mbdev_to_mdev (struct mbus_device*) ;
 int mic_free_irq (int ,struct mic_irq*,void*) ;

__attribute__((used)) static void _mic_free_irq(struct mbus_device *mbdev,
     struct mic_irq *cookie, void *data)
{
 mic_free_irq(mbdev_to_mdev(mbdev), cookie, data);
}
