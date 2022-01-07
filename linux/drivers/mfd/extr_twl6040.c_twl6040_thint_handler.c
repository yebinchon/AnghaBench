
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct twl6040 {int dev; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int TWL6040_REG_STATUS ;
 int TWL6040_TSHUTDET ;
 int dev_warn (int ,char*) ;
 int twl6040_power (struct twl6040*,int) ;
 int twl6040_reg_read (struct twl6040*,int ) ;

__attribute__((used)) static irqreturn_t twl6040_thint_handler(int irq, void *data)
{
 struct twl6040 *twl6040 = data;
 u8 status;

 status = twl6040_reg_read(twl6040, TWL6040_REG_STATUS);
 if (status & TWL6040_TSHUTDET) {
  dev_warn(twl6040->dev, "Thermal shutdown, powering-off");
  twl6040_power(twl6040, 0);
 } else {
  dev_warn(twl6040->dev, "Leaving thermal shutdown, powering-on");
  twl6040_power(twl6040, 1);
 }

 return IRQ_HANDLED;
}
