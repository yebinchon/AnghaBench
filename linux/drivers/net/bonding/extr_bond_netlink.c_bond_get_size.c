
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct nlattr {int dummy; } ;
struct net_device {int dummy; } ;


 size_t BOND_MAX_ARP_TARGETS ;
 int ETH_ALEN ;
 size_t nla_total_size (int) ;

__attribute__((used)) static size_t bond_get_size(const struct net_device *bond_dev)
{
 return nla_total_size(sizeof(u8)) +
  nla_total_size(sizeof(u32)) +
  nla_total_size(sizeof(u32)) +
  nla_total_size(sizeof(u32)) +
  nla_total_size(sizeof(u32)) +
  nla_total_size(sizeof(u8)) +
  nla_total_size(sizeof(u32)) +

  nla_total_size(sizeof(struct nlattr)) +
  nla_total_size(sizeof(u32)) * BOND_MAX_ARP_TARGETS +
  nla_total_size(sizeof(u32)) +
  nla_total_size(sizeof(u32)) +
  nla_total_size(sizeof(u32)) +
  nla_total_size(sizeof(u8)) +
  nla_total_size(sizeof(u8)) +
  nla_total_size(sizeof(u8)) +
  nla_total_size(sizeof(u32)) +
  nla_total_size(sizeof(u8)) +
  nla_total_size(sizeof(u8)) +
  nla_total_size(sizeof(u32)) +
  nla_total_size(sizeof(u32)) +
  nla_total_size(sizeof(u32)) +
  nla_total_size(sizeof(u8)) +
  nla_total_size(sizeof(u8)) +
  nla_total_size(sizeof(struct nlattr)) +
  nla_total_size(sizeof(u16)) +
  nla_total_size(sizeof(u16)) +
  nla_total_size(sizeof(u16)) +
  nla_total_size(sizeof(u16)) +
  nla_total_size(ETH_ALEN) +
  nla_total_size(sizeof(u16)) +
  nla_total_size(sizeof(u16)) +
  nla_total_size(ETH_ALEN) +
  nla_total_size(sizeof(u8)) +
  nla_total_size(sizeof(u32)) +
  0;
}
