
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int max_vfs; } ;
struct octeon_device {int ifcount; TYPE_2__* props; TYPE_1__ sriov_info; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {struct net_device* netdev; } ;


 int IFLA_VF_LINK_STATE_DISABLE ;
 int liquidio_set_vf_link_state (struct net_device*,int,int ) ;

__attribute__((used)) static void disable_all_vf_links(struct octeon_device *oct)
{
 struct net_device *netdev;
 int max_vfs, vf, i;

 if (!oct)
  return;

 max_vfs = oct->sriov_info.max_vfs;

 for (i = 0; i < oct->ifcount; i++) {
  netdev = oct->props[i].netdev;
  if (!netdev)
   continue;

  for (vf = 0; vf < max_vfs; vf++)
   liquidio_set_vf_link_state(netdev, vf,
         IFLA_VF_LINK_STATE_DISABLE);
 }
}
