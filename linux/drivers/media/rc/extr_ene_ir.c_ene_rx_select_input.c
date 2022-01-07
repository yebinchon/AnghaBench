
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ene_device {int dummy; } ;


 int ENE_CIRCFG2 ;
 int ENE_CIRCFG2_GPIO0A ;
 int ene_set_clear_reg_mask (struct ene_device*,int ,int ,int) ;

__attribute__((used)) static void ene_rx_select_input(struct ene_device *dev, bool gpio_0a)
{
 ene_set_clear_reg_mask(dev, ENE_CIRCFG2, ENE_CIRCFG2_GPIO0A, gpio_0a);
}
