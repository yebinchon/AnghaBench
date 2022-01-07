
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vxgedev {struct __vxge_hw_device* devh; } ;
struct net_device {int dummy; } ;
struct __vxge_hw_device {int dummy; } ;
typedef enum ethtool_phys_id_state { ____Placeholder_ethtool_phys_id_state } ethtool_phys_id_state ;


 int EINVAL ;


 int VXGE_FLICKER_OFF ;
 int VXGE_FLICKER_ON ;
 struct vxgedev* netdev_priv (struct net_device*) ;
 int vxge_hw_device_flick_link_led (struct __vxge_hw_device*,int ) ;

__attribute__((used)) static int vxge_ethtool_idnic(struct net_device *dev,
         enum ethtool_phys_id_state state)
{
 struct vxgedev *vdev = netdev_priv(dev);
 struct __vxge_hw_device *hldev = vdev->devh;

 switch (state) {
 case 129:
  vxge_hw_device_flick_link_led(hldev, VXGE_FLICKER_ON);
  break;

 case 128:
  vxge_hw_device_flick_link_led(hldev, VXGE_FLICKER_OFF);
  break;

 default:
  return -EINVAL;
 }

 return 0;
}
