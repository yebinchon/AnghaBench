
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ushc_data {int host_ctrl; int usb_dev; } ;


 int USHC_HOST_CTRL ;
 int USHC_HOST_CTRL_TYPE ;
 int usb_control_msg (int ,int ,int ,int ,int,int ,int *,int ,int) ;
 int usb_sndctrlpipe (int ,int ) ;

__attribute__((used)) static int ushc_hw_set_host_ctrl(struct ushc_data *ushc, u16 mask, u16 val)
{
 u16 host_ctrl;
 int ret;

 host_ctrl = (ushc->host_ctrl & ~mask) | val;
 ret = usb_control_msg(ushc->usb_dev, usb_sndctrlpipe(ushc->usb_dev, 0),
         USHC_HOST_CTRL, USHC_HOST_CTRL_TYPE,
         host_ctrl, 0, ((void*)0), 0, 100);
 if (ret < 0)
  return ret;
 ushc->host_ctrl = host_ctrl;
 return 0;
}
