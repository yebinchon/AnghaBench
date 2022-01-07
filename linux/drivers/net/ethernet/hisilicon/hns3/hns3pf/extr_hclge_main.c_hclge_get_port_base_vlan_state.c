
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_3__ {int vlan_tag; } ;
struct TYPE_4__ {TYPE_1__ vlan_info; } ;
struct hclge_vport {TYPE_2__ port_base_vlan_cfg; } ;
typedef enum hnae3_port_base_vlan_state { ____Placeholder_hnae3_port_base_vlan_state } hnae3_port_base_vlan_state ;


 int HNAE3_PORT_BASE_VLAN_DISABLE ;
 int HNAE3_PORT_BASE_VLAN_ENABLE ;
 int HNAE3_PORT_BASE_VLAN_MODIFY ;
 int HNAE3_PORT_BASE_VLAN_NOCHANGE ;

__attribute__((used)) static u16 hclge_get_port_base_vlan_state(struct hclge_vport *vport,
       enum hnae3_port_base_vlan_state state,
       u16 vlan)
{
 if (state == HNAE3_PORT_BASE_VLAN_DISABLE) {
  if (!vlan)
   return HNAE3_PORT_BASE_VLAN_NOCHANGE;
  else
   return HNAE3_PORT_BASE_VLAN_ENABLE;
 } else {
  if (!vlan)
   return HNAE3_PORT_BASE_VLAN_DISABLE;
  else if (vport->port_base_vlan_cfg.vlan_info.vlan_tag == vlan)
   return HNAE3_PORT_BASE_VLAN_NOCHANGE;
  else
   return HNAE3_PORT_BASE_VLAN_MODIFY;
 }
}
