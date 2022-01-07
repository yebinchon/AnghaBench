
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pm80x_chip {int irq_data; int irq; } ;


 int regmap_del_irq_chip (int ,int ) ;

__attribute__((used)) static void device_irq_exit_805(struct pm80x_chip *chip)
{
 regmap_del_irq_chip(chip->irq, chip->irq_data);
}
