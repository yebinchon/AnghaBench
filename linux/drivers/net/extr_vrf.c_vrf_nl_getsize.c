
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;


 size_t nla_total_size (int) ;

__attribute__((used)) static size_t vrf_nl_getsize(const struct net_device *dev)
{
 return nla_total_size(sizeof(u32));
}
