
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u64 ;
struct TYPE_10__ {int param1; int more; int param2; int cmd; } ;
struct TYPE_11__ {TYPE_4__ s; scalar_t__ u64; } ;
struct octnic_ctrl_pkt {scalar_t__* udd; int cb_fn; TYPE_5__ ncmd; scalar_t__ netpndev; int iq_no; } ;
struct TYPE_12__ {int max_vfs; scalar_t__* vf_macaddr; } ;
struct octeon_device {TYPE_6__ sriov_info; } ;
struct net_device {int dummy; } ;
struct TYPE_9__ {TYPE_2__* txpciq; } ;
struct lio {TYPE_3__ linfo; struct octeon_device* oct_dev; } ;
struct TYPE_7__ {int q_no; } ;
struct TYPE_8__ {TYPE_1__ s; } ;


 int EINVAL ;
 int EIO ;
 struct lio* GET_LIO (struct net_device*) ;
 int OCTNET_CMD_CHANGE_MACADDR ;
 int ether_addr_copy (int *,int *) ;
 int is_valid_ether_addr (int *) ;
 int liquidio_link_ctrl_cmd_completion ;
 int memset (struct octnic_ctrl_pkt*,int ,int) ;
 int octnet_send_nic_ctrl_pkt (struct octeon_device*,struct octnic_ctrl_pkt*) ;

__attribute__((used)) static int __liquidio_set_vf_mac(struct net_device *netdev, int vfidx,
     u8 *mac, bool is_admin_assigned)
{
 struct lio *lio = GET_LIO(netdev);
 struct octeon_device *oct = lio->oct_dev;
 struct octnic_ctrl_pkt nctrl;
 int ret = 0;

 if (!is_valid_ether_addr(mac))
  return -EINVAL;

 if (vfidx < 0 || vfidx >= oct->sriov_info.max_vfs)
  return -EINVAL;

 memset(&nctrl, 0, sizeof(struct octnic_ctrl_pkt));

 nctrl.ncmd.u64 = 0;
 nctrl.ncmd.s.cmd = OCTNET_CMD_CHANGE_MACADDR;

 nctrl.ncmd.s.param1 = vfidx + 1;
 nctrl.ncmd.s.more = 1;
 nctrl.iq_no = lio->linfo.txpciq[0].s.q_no;
 nctrl.netpndev = (u64)netdev;
 if (is_admin_assigned) {
  nctrl.ncmd.s.param2 = 1;
  nctrl.cb_fn = liquidio_link_ctrl_cmd_completion;
 }

 nctrl.udd[0] = 0;

 ether_addr_copy((u8 *)&nctrl.udd[0] + 2, mac);

 oct->sriov_info.vf_macaddr[vfidx] = nctrl.udd[0];

 ret = octnet_send_nic_ctrl_pkt(oct, &nctrl);
 if (ret > 0)
  ret = -EIO;

 return ret;
}
