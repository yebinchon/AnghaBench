
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ushc_data {int usb_dev; } ;


 int EINVAL ;



 int USHC_PWR_CTRL ;
 int USHC_PWR_CTRL_3V3 ;
 int USHC_PWR_CTRL_OFF ;
 int USHC_PWR_CTRL_TYPE ;
 int usb_control_msg (int ,int ,int ,int ,int ,int ,int *,int ,int) ;
 int usb_sndctrlpipe (int ,int ) ;

__attribute__((used)) static int ushc_set_power(struct ushc_data *ushc, unsigned char power_mode)
{
 u16 voltage;

 switch (power_mode) {
 case 130:
  voltage = USHC_PWR_CTRL_OFF;
  break;
 case 128:
 case 129:
  voltage = USHC_PWR_CTRL_3V3;
  break;
 default:
  return -EINVAL;
 }

 return usb_control_msg(ushc->usb_dev, usb_sndctrlpipe(ushc->usb_dev, 0),
          USHC_PWR_CTRL, USHC_PWR_CTRL_TYPE,
          voltage, 0, ((void*)0), 0, 100);
}
