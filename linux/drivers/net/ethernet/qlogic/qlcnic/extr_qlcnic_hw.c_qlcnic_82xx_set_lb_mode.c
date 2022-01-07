
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct qlcnic_adapter {int dummy; } ;


 int EIO ;
 int VPORT_MISS_MODE_ACCEPT_ALL ;
 int msleep (int) ;
 scalar_t__ qlcnic_nic_set_promisc (struct qlcnic_adapter*,int ) ;
 scalar_t__ qlcnic_set_fw_loopback (struct qlcnic_adapter*,int ) ;

int qlcnic_82xx_set_lb_mode(struct qlcnic_adapter *adapter, u8 mode)
{
 if (qlcnic_set_fw_loopback(adapter, mode))
  return -EIO;

 if (qlcnic_nic_set_promisc(adapter,
       VPORT_MISS_MODE_ACCEPT_ALL)) {
  qlcnic_set_fw_loopback(adapter, 0);
  return -EIO;
 }

 msleep(1000);
 return 0;
}
