
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct hinic_dev {int dummy; } ;


 int MAC_DEL ;
 int change_mac (struct hinic_dev*,int const*,int ,int ) ;

int hinic_port_del_mac(struct hinic_dev *nic_dev, const u8 *addr,
         u16 vlan_id)
{
 return change_mac(nic_dev, addr, vlan_id, MAC_DEL);
}
