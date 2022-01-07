
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ushc_data {int clock_freq; int usb_dev; } ;


 int USHC_CLK_FREQ ;
 int USHC_CLK_FREQ_TYPE ;
 int USHC_HOST_CTRL_HIGH_SPD ;
 int usb_control_msg (int ,int ,int ,int ,int,int,int *,int ,int) ;
 int usb_sndctrlpipe (int ,int ) ;
 int ushc_hw_set_host_ctrl (struct ushc_data*,int ,int ) ;

__attribute__((used)) static int ushc_set_bus_freq(struct ushc_data *ushc, int clk, bool enable_hs)
{
 int ret;


 if (clk == 0)
  clk = 400000;

 ret = ushc_hw_set_host_ctrl(ushc, USHC_HOST_CTRL_HIGH_SPD,
        enable_hs ? USHC_HOST_CTRL_HIGH_SPD : 0);
 if (ret < 0)
  return ret;

 ret = usb_control_msg(ushc->usb_dev, usb_sndctrlpipe(ushc->usb_dev, 0),
         USHC_CLK_FREQ, USHC_CLK_FREQ_TYPE,
         clk & 0xffff, (clk >> 16) & 0xffff, ((void*)0), 0, 100);
 if (ret < 0)
  return ret;

 ushc->clock_freq = clk;
 return 0;
}
