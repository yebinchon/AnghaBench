
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ushc_data {int usb_dev; } ;


 int USHC_RESET ;
 int USHC_RESET_TYPE ;
 int usb_control_msg (int ,int ,int ,int ,int ,int ,int *,int ,int) ;
 int usb_sndctrlpipe (int ,int ) ;

__attribute__((used)) static int ushc_hw_reset(struct ushc_data *ushc)
{
 return usb_control_msg(ushc->usb_dev, usb_sndctrlpipe(ushc->usb_dev, 0),
          USHC_RESET, USHC_RESET_TYPE,
          0, 0, ((void*)0), 0, 100);
}
