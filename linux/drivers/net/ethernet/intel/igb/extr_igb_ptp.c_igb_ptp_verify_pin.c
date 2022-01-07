
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptp_clock_info {int dummy; } ;
typedef enum ptp_pin_function { ____Placeholder_ptp_pin_function } ptp_pin_function ;







__attribute__((used)) static int igb_ptp_verify_pin(struct ptp_clock_info *ptp, unsigned int pin,
         enum ptp_pin_function func, unsigned int chan)
{
 switch (func) {
 case 130:
 case 131:
 case 129:
  break;
 case 128:
  return -1;
 }
 return 0;
}
