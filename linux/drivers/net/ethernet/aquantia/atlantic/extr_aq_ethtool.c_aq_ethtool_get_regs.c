
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct ethtool_regs {int dummy; } ;
struct aq_nic_s {int dummy; } ;


 int aq_nic_get_regs (struct aq_nic_s*,struct ethtool_regs*,void*) ;
 int aq_nic_get_regs_count (struct aq_nic_s*) ;
 int memset (void*,int ,int) ;
 struct aq_nic_s* netdev_priv (struct net_device*) ;

__attribute__((used)) static void aq_ethtool_get_regs(struct net_device *ndev,
    struct ethtool_regs *regs, void *p)
{
 struct aq_nic_s *aq_nic = netdev_priv(ndev);
 u32 regs_count = aq_nic_get_regs_count(aq_nic);

 memset(p, 0, regs_count * sizeof(u32));
 aq_nic_get_regs(aq_nic, regs, p);
}
