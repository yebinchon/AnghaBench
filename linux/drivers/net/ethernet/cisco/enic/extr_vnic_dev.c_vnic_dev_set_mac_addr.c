
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
struct vnic_dev {int dummy; } ;


 int CMD_SET_MAC_ADDR ;
 int ETH_ALEN ;
 int vnic_dev_cmd (struct vnic_dev*,int ,int *,int *,int) ;

int vnic_dev_set_mac_addr(struct vnic_dev *vdev, u8 *mac_addr)
{
 u64 a0, a1;
 int wait = 1000;
 int i;

 for (i = 0; i < ETH_ALEN; i++)
  ((u8 *)&a0)[i] = mac_addr[i];

 return vnic_dev_cmd(vdev, CMD_SET_MAC_ADDR, &a0, &a1, wait);
}
