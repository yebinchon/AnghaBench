
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct r852_device {int sm; int readonly; int irqlock; int card_detected; } ;


 int R852_CARD_STA ;
 int R852_CARD_STA_RO ;
 int R852_DMA1 ;
 int R852_DMA2 ;
 int R852_DMA_CAP ;
 int R852_SMBIT ;
 int message (char*,...) ;
 int r852_read_reg (struct r852_device*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void r852_update_media_status(struct r852_device *dev)
{
 uint8_t reg;
 unsigned long flags;
 int readonly;

 spin_lock_irqsave(&dev->irqlock, flags);
 if (!dev->card_detected) {
  message("card removed");
  spin_unlock_irqrestore(&dev->irqlock, flags);
  return ;
 }

 readonly = r852_read_reg(dev, R852_CARD_STA) & R852_CARD_STA_RO;
 reg = r852_read_reg(dev, R852_DMA_CAP);
 dev->sm = (reg & (R852_DMA1 | R852_DMA2)) && (reg & R852_SMBIT);

 message("detected %s %s card in slot",
  dev->sm ? "SmartMedia" : "xD",
  readonly ? "readonly" : "writeable");

 dev->readonly = readonly;
 spin_unlock_irqrestore(&dev->irqlock, flags);
}
