
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int u16 ;
struct vnic_dev {int dummy; } ;


 int CMD_OVERLAY_OFFLOAD_CFG ;
 int vnic_dev_cmd (struct vnic_dev*,int ,int *,int *,int) ;

int vnic_dev_overlay_offload_cfg(struct vnic_dev *vdev, u8 overlay,
     u16 vxlan_udp_port_number)
{
 u64 a1 = vxlan_udp_port_number;
 u64 a0 = overlay;
 int wait = 1000;

 return vnic_dev_cmd(vdev, CMD_OVERLAY_OFFLOAD_CFG, &a0, &a1, wait);
}
