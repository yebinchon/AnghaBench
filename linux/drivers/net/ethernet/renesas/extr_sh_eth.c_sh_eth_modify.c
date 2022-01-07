
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;


 int sh_eth_read (struct net_device*,int) ;
 int sh_eth_write (struct net_device*,int,int) ;

__attribute__((used)) static void sh_eth_modify(struct net_device *ndev, int enum_index, u32 clear,
     u32 set)
{
 sh_eth_write(ndev, (sh_eth_read(ndev, enum_index) & ~clear) | set,
       enum_index);
}
