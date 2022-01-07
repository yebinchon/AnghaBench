
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct tc6393xb {int lock; scalar_t__ scr; } ;
struct TYPE_2__ {int parent; } ;
struct platform_device {TYPE_1__ dev; } ;


 scalar_t__ SCR_FER ;
 int SCR_FER_SLCDEN ;
 struct tc6393xb* dev_get_drvdata (int ) ;
 int ioread8 (scalar_t__) ;
 int iowrite8 (int ,scalar_t__) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

int tc6393xb_lcd_set_power(struct platform_device *fb, bool on)
{
 struct tc6393xb *tc6393xb = dev_get_drvdata(fb->dev.parent);
 u8 fer;
 unsigned long flags;

 raw_spin_lock_irqsave(&tc6393xb->lock, flags);

 fer = ioread8(tc6393xb->scr + SCR_FER);
 if (on)
  fer |= SCR_FER_SLCDEN;
 else
  fer &= ~SCR_FER_SLCDEN;
 iowrite8(fer, tc6393xb->scr + SCR_FER);

 raw_spin_unlock_irqrestore(&tc6393xb->lock, flags);

 return 0;
}
