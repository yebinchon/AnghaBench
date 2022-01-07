
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct aq_nic_s {int dummy; } ;


 int aq_nic_get_regs_count (struct aq_nic_s*) ;
 struct aq_nic_s* netdev_priv (struct net_device*) ;

__attribute__((used)) static int aq_ethtool_get_regs_len(struct net_device *ndev)
{
 struct aq_nic_s *aq_nic = netdev_priv(ndev);
 u32 regs_count = aq_nic_get_regs_count(aq_nic);

 return regs_count * sizeof(u32);
}
