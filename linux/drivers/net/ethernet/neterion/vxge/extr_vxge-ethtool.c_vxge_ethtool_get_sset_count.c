
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vxgedev {int no_of_vpath; int max_config_port; } ;
struct net_device {int dummy; } ;


 int DRIVER_STAT_LEN ;
 int EOPNOTSUPP ;

 int VXGE_HW_AGGR_STATS_LEN ;
 int VXGE_HW_PORT_STATS_LEN ;
 int VXGE_HW_VPATH_RX_STATS_LEN ;
 int VXGE_HW_VPATH_STATS_LEN ;
 int VXGE_HW_VPATH_TX_STATS_LEN ;
 int VXGE_SW_STATS_LEN ;
 int VXGE_TITLE_LEN ;
 struct vxgedev* netdev_priv (struct net_device*) ;

__attribute__((used)) static int vxge_ethtool_get_sset_count(struct net_device *dev, int sset)
{
 struct vxgedev *vdev = netdev_priv(dev);

 switch (sset) {
 case 128:
  return VXGE_TITLE_LEN +
   (vdev->no_of_vpath * VXGE_HW_VPATH_STATS_LEN) +
   (vdev->max_config_port * VXGE_HW_AGGR_STATS_LEN) +
   (vdev->max_config_port * VXGE_HW_PORT_STATS_LEN) +
   (vdev->no_of_vpath * VXGE_HW_VPATH_TX_STATS_LEN) +
   (vdev->no_of_vpath * VXGE_HW_VPATH_RX_STATS_LEN) +
   (vdev->no_of_vpath * VXGE_SW_STATS_LEN) +
   DRIVER_STAT_LEN;
 default:
  return -EOPNOTSUPP;
 }
}
