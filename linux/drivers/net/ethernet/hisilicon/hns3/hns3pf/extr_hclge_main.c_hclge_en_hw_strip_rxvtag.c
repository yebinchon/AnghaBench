
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hnae3_handle {int dummy; } ;
struct TYPE_4__ {int strip_tag1_en; int strip_tag2_en; int vlan1_vlan_prionly; int vlan2_vlan_prionly; int rx_vlan_offload_en; } ;
struct TYPE_3__ {scalar_t__ state; } ;
struct hclge_vport {TYPE_2__ rxvlan_cfg; TYPE_1__ port_base_vlan_cfg; } ;


 scalar_t__ HNAE3_PORT_BASE_VLAN_DISABLE ;
 struct hclge_vport* hclge_get_vport (struct hnae3_handle*) ;
 int hclge_set_vlan_rx_offload_cfg (struct hclge_vport*) ;

int hclge_en_hw_strip_rxvtag(struct hnae3_handle *handle, bool enable)
{
 struct hclge_vport *vport = hclge_get_vport(handle);

 if (vport->port_base_vlan_cfg.state == HNAE3_PORT_BASE_VLAN_DISABLE) {
  vport->rxvlan_cfg.strip_tag1_en = 0;
  vport->rxvlan_cfg.strip_tag2_en = enable;
 } else {
  vport->rxvlan_cfg.strip_tag1_en = enable;
  vport->rxvlan_cfg.strip_tag2_en = 1;
 }
 vport->rxvlan_cfg.vlan1_vlan_prionly = 0;
 vport->rxvlan_cfg.vlan2_vlan_prionly = 0;
 vport->rxvlan_cfg.rx_vlan_offload_en = enable;

 return hclge_set_vlan_rx_offload_cfg(vport);
}
