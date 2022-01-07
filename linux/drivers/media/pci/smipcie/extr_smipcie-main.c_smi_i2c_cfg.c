
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct smi_dev {int dummy; } ;


 int msleep (int) ;
 int smi_read (int) ;
 int smi_write (int,int) ;

__attribute__((used)) static void smi_i2c_cfg(struct smi_dev *dev, u32 sw_ctl)
{
 u32 dwCtrl;

 dwCtrl = smi_read(sw_ctl);
 dwCtrl &= ~0x18;
 dwCtrl |= 0x21;
 dwCtrl &= ~0xff00;
 dwCtrl |= 0x6400;
 smi_write(sw_ctl, dwCtrl);
 msleep(20);
 dwCtrl = smi_read(sw_ctl);
 dwCtrl &= ~0x20;
 smi_write(sw_ctl, dwCtrl);
}
