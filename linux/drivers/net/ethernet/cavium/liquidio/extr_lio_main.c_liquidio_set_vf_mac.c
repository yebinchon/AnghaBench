
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int num_vfs_alloced; } ;
struct octeon_device {TYPE_1__ sriov_info; } ;
struct net_device {int dummy; } ;
struct lio {struct octeon_device* oct_dev; } ;


 int EINVAL ;
 struct lio* GET_LIO (struct net_device*) ;
 int __liquidio_set_vf_mac (struct net_device*,int,int *,int) ;
 int cn23xx_tell_vf_its_macaddr_changed (struct octeon_device*,int,int *) ;

__attribute__((used)) static int liquidio_set_vf_mac(struct net_device *netdev, int vfidx, u8 *mac)
{
 struct lio *lio = GET_LIO(netdev);
 struct octeon_device *oct = lio->oct_dev;
 int retval;

 if (vfidx < 0 || vfidx >= oct->sriov_info.num_vfs_alloced)
  return -EINVAL;

 retval = __liquidio_set_vf_mac(netdev, vfidx, mac, 1);
 if (!retval)
  cn23xx_tell_vf_its_macaddr_changed(oct, vfidx, mac);

 return retval;
}
