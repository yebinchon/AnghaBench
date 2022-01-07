
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int vlan_tci; } ;
struct ethtool_rx_flow_spec {TYPE_1__ m_ext; } ;


 int VLAN_PRIO_MASK ;
 int VLAN_PRIO_SHIFT ;
 int be16_to_cpu (int ) ;

__attribute__((used)) static inline u32 vlan_tci_priom(struct ethtool_rx_flow_spec *rule)
{
 return (be16_to_cpu(rule->m_ext.vlan_tci) & VLAN_PRIO_MASK) >>
  VLAN_PRIO_SHIFT;
}
