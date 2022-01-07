
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct net_device {int addr_len; int perm_addr; } ;


 int memcpy (int *,int ,int ) ;

__attribute__((used)) static void qlcnic_dcb_get_perm_hw_addr(struct net_device *netdev, u8 *addr)
{
 memcpy(addr, netdev->perm_addr, netdev->addr_len);
}
