
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm831x_irq_data {int reg; } ;


 int WM831X_INTERRUPT_STATUS_1 ;

__attribute__((used)) static inline int irq_data_to_status_reg(struct wm831x_irq_data *irq_data)
{
 return WM831X_INTERRUPT_STATUS_1 - 1 + irq_data->reg;
}
