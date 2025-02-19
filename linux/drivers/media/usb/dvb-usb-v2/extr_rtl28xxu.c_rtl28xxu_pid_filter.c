
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct rtl2832_platform_data {int (* pid_filter ) (int ,int,int ,int) ;} ;
struct rtl2830_platform_data {int (* pid_filter ) (int ,int,int ,int) ;} ;
struct rtl28xxu_dev {scalar_t__ chip_id; struct rtl2832_platform_data rtl2832_platform_data; struct rtl2830_platform_data rtl2830_platform_data; } ;
struct dvb_usb_adapter {int * fe; } ;


 scalar_t__ CHIP_ID_RTL2831U ;
 struct rtl28xxu_dev* adap_to_priv (struct dvb_usb_adapter*) ;
 int stub1 (int ,int,int ,int) ;
 int stub2 (int ,int,int ,int) ;

__attribute__((used)) static int rtl28xxu_pid_filter(struct dvb_usb_adapter *adap, int index,
          u16 pid, int onoff)
{
 struct rtl28xxu_dev *dev = adap_to_priv(adap);

 if (dev->chip_id == CHIP_ID_RTL2831U) {
  struct rtl2830_platform_data *pdata = &dev->rtl2830_platform_data;

  return pdata->pid_filter(adap->fe[0], index, pid, onoff);
 } else {
  struct rtl2832_platform_data *pdata = &dev->rtl2832_platform_data;

  return pdata->pid_filter(adap->fe[0], index, pid, onoff);
 }
}
