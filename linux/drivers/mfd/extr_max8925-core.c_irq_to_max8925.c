
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max8925_irq_data {int dummy; } ;
struct max8925_chip {int irq_base; } ;


 struct max8925_irq_data* max8925_irqs ;

__attribute__((used)) static inline struct max8925_irq_data *irq_to_max8925(struct max8925_chip *chip,
            int irq)
{
 return &max8925_irqs[irq - chip->irq_base];
}
