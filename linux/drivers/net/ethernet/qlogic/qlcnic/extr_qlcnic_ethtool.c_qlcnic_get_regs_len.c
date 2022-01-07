
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qlcnic_adapter {int dummy; } ;
struct net_device {int dummy; } ;
typedef int ext_diag_registers ;
typedef int diag_registers ;


 int QLCNIC_DEV_INFO_SIZE ;
 struct qlcnic_adapter* netdev_priv (struct net_device*) ;
 scalar_t__ qlcnic_83xx_check (struct qlcnic_adapter*) ;
 int qlcnic_83xx_get_regs_len (struct qlcnic_adapter*) ;
 scalar_t__ qlcnic_get_ring_regs_len (struct qlcnic_adapter*) ;

__attribute__((used)) static int qlcnic_get_regs_len(struct net_device *dev)
{
 struct qlcnic_adapter *adapter = netdev_priv(dev);
 u32 len;

 if (qlcnic_83xx_check(adapter))
  len = qlcnic_83xx_get_regs_len(adapter);
 else
  len = sizeof(ext_diag_registers) + sizeof(diag_registers);

 len += ((QLCNIC_DEV_INFO_SIZE + 2) * sizeof(u32));
 len += qlcnic_get_ring_regs_len(adapter);
 return len;
}
