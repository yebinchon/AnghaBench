
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
struct ddb {TYPE_2__* link; } ;
typedef enum fe_sec_voltage { ____Placeholder_fe_sec_voltage } fe_sec_voltage ;
struct TYPE_3__ {int* oldvoltage; int * voltage; } ;
struct TYPE_4__ {TYPE_1__ lnb; } ;


 int EINVAL ;
 int LNB_CMD_HIGH ;
 int LNB_CMD_LOW ;
 int LNB_CMD_OFF ;



 int lnb_command (struct ddb*,size_t,size_t,int ) ;

__attribute__((used)) static int lnb_set_voltage(struct ddb *dev, u32 link, u32 input,
      enum fe_sec_voltage voltage)
{
 int s = 0;

 if (dev->link[link].lnb.oldvoltage[input] == voltage)
  return 0;
 switch (voltage) {
 case 128:
  if (dev->link[link].lnb.voltage[input])
   return 0;
  lnb_command(dev, link, input, LNB_CMD_OFF);
  break;
 case 130:
  lnb_command(dev, link, input, LNB_CMD_LOW);
  break;
 case 129:
  lnb_command(dev, link, input, LNB_CMD_HIGH);
  break;
 default:
  s = -EINVAL;
  break;
 }
 dev->link[link].lnb.oldvoltage[input] = voltage;
 return s;
}
