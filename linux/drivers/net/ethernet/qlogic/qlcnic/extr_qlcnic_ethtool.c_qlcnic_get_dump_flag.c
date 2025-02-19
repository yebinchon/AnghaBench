
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qlcnic_fw_dump {int cap_mask; scalar_t__ size; scalar_t__ tmpl_hdr_size; scalar_t__ clr; int tmpl_hdr; } ;
struct qlcnic_adapter {int fw_version; int netdev; TYPE_1__* ahw; } ;
struct net_device {int dummy; } ;
struct ethtool_dump {int version; int flag; scalar_t__ len; } ;
struct TYPE_2__ {struct qlcnic_fw_dump fw_dump; } ;


 int ENOTSUPP ;
 int ETH_FW_DUMP_DISABLE ;
 int netdev_err (int ,char*) ;
 struct qlcnic_adapter* netdev_priv (struct net_device*) ;
 int qlcnic_check_fw_dump_state (struct qlcnic_adapter*) ;

__attribute__((used)) static int
qlcnic_get_dump_flag(struct net_device *netdev, struct ethtool_dump *dump)
{
 struct qlcnic_adapter *adapter = netdev_priv(netdev);
 struct qlcnic_fw_dump *fw_dump = &adapter->ahw->fw_dump;

 if (!fw_dump->tmpl_hdr) {
  netdev_err(adapter->netdev, "FW Dump not supported\n");
  return -ENOTSUPP;
 }

 if (fw_dump->clr)
  dump->len = fw_dump->tmpl_hdr_size + fw_dump->size;
 else
  dump->len = 0;

 if (!qlcnic_check_fw_dump_state(adapter))
  dump->flag = ETH_FW_DUMP_DISABLE;
 else
  dump->flag = fw_dump->cap_mask;

 dump->version = adapter->fw_version;
 return 0;
}
