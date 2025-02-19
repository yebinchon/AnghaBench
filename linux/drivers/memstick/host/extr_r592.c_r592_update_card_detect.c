
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct r592_device {int dummy; } ;


 int R592_REG_MSC ;
 int R592_REG_MSC_IRQ_INSERT ;
 int R592_REG_MSC_IRQ_REMOVE ;
 int R592_REG_MSC_PRSNT ;
 int dbg (char*,char*) ;
 int r592_read_reg (struct r592_device*,int ) ;
 int r592_write_reg (struct r592_device*,int ,int) ;

__attribute__((used)) static void r592_update_card_detect(struct r592_device *dev)
{
 u32 reg = r592_read_reg(dev, R592_REG_MSC);
 bool card_detected = reg & R592_REG_MSC_PRSNT;

 dbg("update card detect. card state: %s", card_detected ?
  "present" : "absent");

 reg &= ~((R592_REG_MSC_IRQ_REMOVE | R592_REG_MSC_IRQ_INSERT) << 16);

 if (card_detected)
  reg |= (R592_REG_MSC_IRQ_REMOVE << 16);
 else
  reg |= (R592_REG_MSC_IRQ_INSERT << 16);

 r592_write_reg(dev, R592_REG_MSC, reg);
}
