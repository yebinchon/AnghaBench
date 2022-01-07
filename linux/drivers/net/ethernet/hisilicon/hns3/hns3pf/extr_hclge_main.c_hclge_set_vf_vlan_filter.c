
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct hnae3_handle {int dummy; } ;
struct TYPE_4__ {int state; } ;
struct hclge_vport {int state; TYPE_2__ port_base_vlan_cfg; struct hclge_dev* back; } ;
struct hclge_vlan_info {int vlan_tag; int qos; int vlan_proto; } ;
struct hclge_dev {int num_alloc_vfs; struct hclge_vport* vport; TYPE_1__* pdev; } ;
typedef scalar_t__ __be16 ;
struct TYPE_3__ {int revision; } ;


 int EINVAL ;
 int EOPNOTSUPP ;
 int EPROTONOSUPPORT ;
 int ETH_P_8021Q ;
 int HCLGE_VPORT_STATE_ALIVE ;
 int HNAE3_DOWN_CLIENT ;
 int HNAE3_PORT_BASE_VLAN_NOCHANGE ;
 int HNAE3_UP_CLIENT ;
 int VLAN_N_VID ;
 int hclge_get_port_base_vlan_state (struct hclge_vport*,int ,int) ;
 struct hclge_vport* hclge_get_vport (struct hnae3_handle*) ;
 int hclge_notify_client (struct hclge_dev*,int ) ;
 int hclge_push_vf_port_base_vlan_info (struct hclge_vport*,int,int,int,int,int ) ;
 int hclge_update_port_base_vlan_cfg (struct hclge_vport*,int,struct hclge_vlan_info*) ;
 scalar_t__ htons (int ) ;
 int ntohs (scalar_t__) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int hclge_set_vf_vlan_filter(struct hnae3_handle *handle, int vfid,
        u16 vlan, u8 qos, __be16 proto)
{
 struct hclge_vport *vport = hclge_get_vport(handle);
 struct hclge_dev *hdev = vport->back;
 struct hclge_vlan_info vlan_info;
 u16 state;
 int ret;

 if (hdev->pdev->revision == 0x20)
  return -EOPNOTSUPP;


 if (vfid >= hdev->num_alloc_vfs || vlan > VLAN_N_VID - 1 || qos > 7)
  return -EINVAL;
 if (proto != htons(ETH_P_8021Q))
  return -EPROTONOSUPPORT;

 vport = &hdev->vport[vfid];
 state = hclge_get_port_base_vlan_state(vport,
            vport->port_base_vlan_cfg.state,
            vlan);
 if (state == HNAE3_PORT_BASE_VLAN_NOCHANGE)
  return 0;

 vlan_info.vlan_tag = vlan;
 vlan_info.qos = qos;
 vlan_info.vlan_proto = ntohs(proto);


 if (!vfid) {
  hclge_notify_client(hdev, HNAE3_DOWN_CLIENT);
  ret = hclge_update_port_base_vlan_cfg(vport, state, &vlan_info);
  hclge_notify_client(hdev, HNAE3_UP_CLIENT);

  return ret;
 }

 if (!test_bit(HCLGE_VPORT_STATE_ALIVE, &vport->state)) {
  return hclge_update_port_base_vlan_cfg(vport, state,
             &vlan_info);
 } else {
  ret = hclge_push_vf_port_base_vlan_info(&hdev->vport[0],
       (u8)vfid, state,
       vlan, qos,
       ntohs(proto));
  return ret;
 }
}
