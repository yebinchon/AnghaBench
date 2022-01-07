
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r852_device {scalar_t__ card_detected; scalar_t__ card_unstable; } ;


 int R852_CARD_IRQ_ENABLE ;
 int R852_CARD_IRQ_GENABLE ;
 int R852_CARD_IRQ_INSERT ;
 int R852_CARD_IRQ_REMOVE ;
 int r852_read_reg (struct r852_device*,int ) ;
 int r852_write_reg (struct r852_device*,int ,int) ;

__attribute__((used)) static void r852_update_card_detect(struct r852_device *dev)
{
 int card_detect_reg = r852_read_reg(dev, R852_CARD_IRQ_ENABLE);
 dev->card_unstable = 0;

 card_detect_reg &= ~(R852_CARD_IRQ_REMOVE | R852_CARD_IRQ_INSERT);
 card_detect_reg |= R852_CARD_IRQ_GENABLE;

 card_detect_reg |= dev->card_detected ?
  R852_CARD_IRQ_REMOVE : R852_CARD_IRQ_INSERT;

 r852_write_reg(dev, R852_CARD_IRQ_ENABLE, card_detect_reg);
}
