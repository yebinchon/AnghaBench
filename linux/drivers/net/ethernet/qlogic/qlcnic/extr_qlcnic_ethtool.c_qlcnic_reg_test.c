
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct qlcnic_adapter {TYPE_1__* pdev; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int vendor; } ;


 int EIO ;
 int QLCNIC_PCIX_PH_REG (int ) ;
 int QLCRD32 (struct qlcnic_adapter*,int ,int*) ;
 struct qlcnic_adapter* netdev_priv (struct net_device*) ;
 scalar_t__ qlcnic_83xx_check (struct qlcnic_adapter*) ;
 int qlcnic_83xx_reg_test (struct qlcnic_adapter*) ;

__attribute__((used)) static int qlcnic_reg_test(struct net_device *dev)
{
 struct qlcnic_adapter *adapter = netdev_priv(dev);
 u32 data_read;
 int err = 0;

 if (qlcnic_83xx_check(adapter))
  return qlcnic_83xx_reg_test(adapter);

 data_read = QLCRD32(adapter, QLCNIC_PCIX_PH_REG(0), &err);
 if (err == -EIO)
  return err;
 if ((data_read & 0xffff) != adapter->pdev->vendor)
  return 1;

 return 0;
}
