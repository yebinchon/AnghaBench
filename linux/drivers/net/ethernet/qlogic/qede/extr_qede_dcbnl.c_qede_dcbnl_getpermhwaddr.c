
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct net_device {int addr_len; int dev_addr; } ;


 int memcpy (int *,int ,int ) ;

__attribute__((used)) static void qede_dcbnl_getpermhwaddr(struct net_device *netdev,
         u8 *perm_addr)
{
 memcpy(perm_addr, netdev->dev_addr, netdev->addr_len);
}
