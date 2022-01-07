
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int vlan_tci; } ;
struct ethtool_rx_flow_spec {TYPE_1__ h_ext; } ;


 int VLAN_VID_MASK ;
 int be16_to_cpu (int ) ;

__attribute__((used)) static inline u32 vlan_tci_vid(struct ethtool_rx_flow_spec *rule)
{
 return be16_to_cpu(rule->h_ext.vlan_tci) & VLAN_VID_MASK;
}
