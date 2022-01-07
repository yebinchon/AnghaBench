
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int param1; int param2; scalar_t__ more; int cmd; int cmdgroup; } ;
struct TYPE_10__ {TYPE_2__ s; } ;
struct octnic_ctrl_pkt {int * cb_fn; int iq_no; TYPE_3__ ncmd; } ;
struct TYPE_14__ {int num_vfs_alloced; int* vf_spoofchk; } ;
struct TYPE_8__ {int app_cap_flags; } ;
struct octeon_device {TYPE_7__ sriov_info; TYPE_1__ fw_info; } ;
struct net_device {int dummy; } ;
struct TYPE_13__ {TYPE_5__* txpciq; } ;
struct lio {int netdev; TYPE_6__ linfo; struct octeon_device* oct_dev; } ;
struct TYPE_11__ {int q_no; } ;
struct TYPE_12__ {TYPE_4__ s; } ;


 int EINVAL ;
 int EOPNOTSUPP ;
 struct lio* GET_LIO (struct net_device*) ;
 int LIQUIDIO_SPOOFCHK_CAP ;
 int OCTNET_CMD_GROUP1 ;
 int OCTNET_CMD_SET_VF_SPOOFCHK ;
 int drv ;
 int memset (struct octnic_ctrl_pkt*,int ,int) ;
 int netif_info (struct lio*,int ,int ,char*,...) ;
 int octnet_send_nic_ctrl_pkt (struct octeon_device*,struct octnic_ctrl_pkt*) ;

__attribute__((used)) static int liquidio_set_vf_spoofchk(struct net_device *netdev, int vfidx,
        bool enable)
{
 struct lio *lio = GET_LIO(netdev);
 struct octeon_device *oct = lio->oct_dev;
 struct octnic_ctrl_pkt nctrl;
 int retval;

 if (!(oct->fw_info.app_cap_flags & LIQUIDIO_SPOOFCHK_CAP)) {
  netif_info(lio, drv, lio->netdev,
      "firmware does not support spoofchk\n");
  return -EOPNOTSUPP;
 }

 if (vfidx < 0 || vfidx >= oct->sriov_info.num_vfs_alloced) {
  netif_info(lio, drv, lio->netdev, "Invalid vfidx %d\n", vfidx);
  return -EINVAL;
 }

 if (enable) {
  if (oct->sriov_info.vf_spoofchk[vfidx])
   return 0;
 } else {

  if (!oct->sriov_info.vf_spoofchk[vfidx])
   return 0;
 }

 memset(&nctrl, 0, sizeof(struct octnic_ctrl_pkt));
 nctrl.ncmd.s.cmdgroup = OCTNET_CMD_GROUP1;
 nctrl.ncmd.s.cmd = OCTNET_CMD_SET_VF_SPOOFCHK;
 nctrl.ncmd.s.param1 =
  vfidx + 1;


 nctrl.ncmd.s.param2 = enable;
 nctrl.ncmd.s.more = 0;
 nctrl.iq_no = lio->linfo.txpciq[0].s.q_no;
 nctrl.cb_fn = ((void*)0);

 retval = octnet_send_nic_ctrl_pkt(oct, &nctrl);

 if (retval) {
  netif_info(lio, drv, lio->netdev,
      "Failed to set VF %d spoofchk %s\n", vfidx,
   enable ? "on" : "off");
  return -1;
 }

 oct->sriov_info.vf_spoofchk[vfidx] = enable;
 netif_info(lio, drv, lio->netdev, "VF %u spoofchk is %s\n", vfidx,
     enable ? "on" : "off");

 return 0;
}
