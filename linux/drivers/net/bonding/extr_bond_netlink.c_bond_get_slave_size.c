
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct net_device {int dummy; } ;


 int MAX_ADDR_LEN ;
 size_t nla_total_size (int) ;

__attribute__((used)) static size_t bond_get_slave_size(const struct net_device *bond_dev,
      const struct net_device *slave_dev)
{
 return nla_total_size(sizeof(u8)) +
  nla_total_size(sizeof(u8)) +
  nla_total_size(sizeof(u32)) +
  nla_total_size(MAX_ADDR_LEN) +
  nla_total_size(sizeof(u16)) +
  nla_total_size(sizeof(u16)) +
  nla_total_size(sizeof(u8)) +
  nla_total_size(sizeof(u16)) +
  0;
}
