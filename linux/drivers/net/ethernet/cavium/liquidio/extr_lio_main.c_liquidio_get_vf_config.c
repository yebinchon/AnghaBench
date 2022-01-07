
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_6__ {int id; scalar_t__ active; } ;
struct TYPE_7__ {int num_vfs_alloced; int* vf_vlantci; int * vf_spoofchk; int * vf_linkstate; TYPE_1__ trusted_vf; int * vf_macaddr; } ;
struct octeon_device {TYPE_2__ sriov_info; } ;
struct net_device {int dummy; } ;
struct TYPE_8__ {int speed; } ;
struct TYPE_9__ {TYPE_3__ s; } ;
struct TYPE_10__ {TYPE_4__ link; } ;
struct lio {TYPE_5__ linfo; struct octeon_device* oct_dev; } ;
struct ifla_vf_info {int vf; int vlan; int qos; int trusted; scalar_t__ min_tx_rate; int max_tx_rate; int spoofchk; int linkstate; int * mac; } ;


 int EINVAL ;
 struct lio* GET_LIO (struct net_device*) ;
 int VLAN_PRIO_SHIFT ;
 int VLAN_VID_MASK ;
 int ether_addr_copy (int *,int *) ;
 int memset (struct ifla_vf_info*,int ,int) ;

__attribute__((used)) static int liquidio_get_vf_config(struct net_device *netdev, int vfidx,
      struct ifla_vf_info *ivi)
{
 struct lio *lio = GET_LIO(netdev);
 struct octeon_device *oct = lio->oct_dev;
 u8 *macaddr;

 if (vfidx < 0 || vfidx >= oct->sriov_info.num_vfs_alloced)
  return -EINVAL;

 memset(ivi, 0, sizeof(struct ifla_vf_info));

 ivi->vf = vfidx;
 macaddr = 2 + (u8 *)&oct->sriov_info.vf_macaddr[vfidx];
 ether_addr_copy(&ivi->mac[0], macaddr);
 ivi->vlan = oct->sriov_info.vf_vlantci[vfidx] & VLAN_VID_MASK;
 ivi->qos = oct->sriov_info.vf_vlantci[vfidx] >> VLAN_PRIO_SHIFT;
 if (oct->sriov_info.trusted_vf.active &&
     oct->sriov_info.trusted_vf.id == vfidx)
  ivi->trusted = 1;
 else
  ivi->trusted = 0;
 ivi->linkstate = oct->sriov_info.vf_linkstate[vfidx];
 ivi->spoofchk = oct->sriov_info.vf_spoofchk[vfidx];
 ivi->max_tx_rate = lio->linfo.link.s.speed;
 ivi->min_tx_rate = 0;

 return 0;
}
