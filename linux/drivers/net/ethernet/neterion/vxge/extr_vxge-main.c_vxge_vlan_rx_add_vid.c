
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct vxgedev {int no_of_vpath; int active_vlans; struct vxge_vpath* vpaths; } ;
struct vxge_vpath {int handle; int is_open; } ;
struct net_device {int dummy; } ;
typedef int __be16 ;


 struct vxgedev* netdev_priv (struct net_device*) ;
 int set_bit (int ,int ) ;
 int vxge_hw_vpath_vid_add (int ,int ) ;

__attribute__((used)) static int
vxge_vlan_rx_add_vid(struct net_device *dev, __be16 proto, u16 vid)
{
 struct vxgedev *vdev = netdev_priv(dev);
 struct vxge_vpath *vpath;
 int vp_id;


 for (vp_id = 0; vp_id < vdev->no_of_vpath; vp_id++) {
  vpath = &vdev->vpaths[vp_id];
  if (!vpath->is_open)
   continue;
  vxge_hw_vpath_vid_add(vpath->handle, vid);
 }
 set_bit(vid, vdev->active_vlans);
 return 0;
}
