
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;


 int ENIC_RSS_LEN ;

__attribute__((used)) static u32 enic_get_rxfh_key_size(struct net_device *netdev)
{
 return ENIC_RSS_LEN;
}
