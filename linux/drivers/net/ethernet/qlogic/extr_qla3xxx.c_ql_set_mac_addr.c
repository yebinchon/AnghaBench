
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct net_device {scalar_t__ dev_addr; } ;
typedef int __le16 ;


 int cpu_to_le16 (int ) ;

__attribute__((used)) static void ql_set_mac_addr(struct net_device *ndev, u16 *addr)
{
 __le16 *p = (__le16 *)ndev->dev_addr;
 p[0] = cpu_to_le16(addr[0]);
 p[1] = cpu_to_le16(addr[1]);
 p[2] = cpu_to_le16(addr[2]);
}
