
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptp_clock_info {int dummy; } ;
typedef enum ptp_pin_function { ____Placeholder_ptp_pin_function } ptp_pin_function ;


 int EOPNOTSUPP ;





__attribute__((used)) static int mv88e6352_ptp_verify(struct ptp_clock_info *ptp, unsigned int pin,
    enum ptp_pin_function func, unsigned int chan)
{
 switch (func) {
 case 130:
 case 131:
  break;
 case 129:
 case 128:
  return -EOPNOTSUPP;
 }
 return 0;
}
