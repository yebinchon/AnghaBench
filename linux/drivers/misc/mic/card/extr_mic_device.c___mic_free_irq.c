
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vop_device {int dummy; } ;
struct mic_irq {int dummy; } ;


 void mic_free_card_irq (struct mic_irq*,void*) ;

__attribute__((used)) static void __mic_free_irq(struct vop_device *vpdev,
      struct mic_irq *cookie, void *data)
{
 return mic_free_card_irq(cookie, data);
}
