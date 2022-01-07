
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MENELAUS_MCT_PIN_ST ;
 int menelaus_read_reg (int ) ;

int menelaus_get_slot_pin_states(void)
{
 return menelaus_read_reg(MENELAUS_MCT_PIN_ST);
}
