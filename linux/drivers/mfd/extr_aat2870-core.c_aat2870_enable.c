
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aat2870_data {scalar_t__ en_pin; int is_enable; } ;


 int gpio_set_value (scalar_t__,int) ;

__attribute__((used)) static inline void aat2870_enable(struct aat2870_data *aat2870)
{
 if (aat2870->en_pin >= 0)
  gpio_set_value(aat2870->en_pin, 1);

 aat2870->is_enable = 1;
}
