
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptp_pin_desc {int index; int chan; int func; int name; } ;


 size_t CALIBRATE_GPIO ;
 int DP83640_N_PINS ;
 int EXTTS0_GPIO ;
 int GPIO_TABLE_SIZE ;
 size_t PEROUT_GPIO ;
 int PTP_PF_EXTTS ;
 int PTP_PF_PEROUT ;
 int PTP_PF_PHYSYNC ;
 int* gpio_tab ;
 int pr_err (char*,int,int) ;
 int snprintf (int ,int,char*,int) ;

__attribute__((used)) static void dp83640_gpio_defaults(struct ptp_pin_desc *pd)
{
 int i, index;

 for (i = 0; i < DP83640_N_PINS; i++) {
  snprintf(pd[i].name, sizeof(pd[i].name), "GPIO%d", 1 + i);
  pd[i].index = i;
 }

 for (i = 0; i < GPIO_TABLE_SIZE; i++) {
  if (gpio_tab[i] < 1 || gpio_tab[i] > DP83640_N_PINS) {
   pr_err("gpio_tab[%d]=%hu out of range", i, gpio_tab[i]);
   return;
  }
 }

 index = gpio_tab[CALIBRATE_GPIO] - 1;
 pd[index].func = PTP_PF_PHYSYNC;
 pd[index].chan = 0;

 index = gpio_tab[PEROUT_GPIO] - 1;
 pd[index].func = PTP_PF_PEROUT;
 pd[index].chan = 0;

 for (i = EXTTS0_GPIO; i < GPIO_TABLE_SIZE; i++) {
  index = gpio_tab[i] - 1;
  pd[index].func = PTP_PF_EXTTS;
  pd[index].chan = i - EXTTS0_GPIO;
 }
}
