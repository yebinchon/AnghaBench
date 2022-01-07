
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct r852_device {int card_detected; int irqlock; } ;


 int R852_CARD_STA ;
 int R852_CARD_STA_PRESENT ;
 int r852_read_reg (struct r852_device*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void r852_card_update_present(struct r852_device *dev)
{
 unsigned long flags;
 uint8_t reg;

 spin_lock_irqsave(&dev->irqlock, flags);
 reg = r852_read_reg(dev, R852_CARD_STA);
 dev->card_detected = !!(reg & R852_CARD_STA_PRESENT);
 spin_unlock_irqrestore(&dev->irqlock, flags);
}
