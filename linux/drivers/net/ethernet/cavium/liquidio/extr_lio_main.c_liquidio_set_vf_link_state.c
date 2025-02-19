
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


struct TYPE_7__ {int param1; int param2; scalar_t__ more; int cmd; } ;
struct TYPE_8__ {TYPE_1__ s; } ;
struct octnic_ctrl_pkt {int * cb_fn; int iq_no; TYPE_2__ ncmd; } ;
struct TYPE_12__ {int num_vfs_alloced; int* vf_linkstate; } ;
struct octeon_device {TYPE_6__ sriov_info; } ;
struct net_device {int dummy; } ;
struct TYPE_11__ {TYPE_4__* txpciq; } ;
struct lio {TYPE_5__ linfo; struct octeon_device* oct_dev; } ;
struct TYPE_9__ {int q_no; } ;
struct TYPE_10__ {TYPE_3__ s; } ;


 int EINVAL ;
 int EIO ;
 struct lio* GET_LIO (struct net_device*) ;
 int OCTNET_CMD_SET_VF_LINKSTATE ;
 int memset (struct octnic_ctrl_pkt*,int ,int) ;
 int octnet_send_nic_ctrl_pkt (struct octeon_device*,struct octnic_ctrl_pkt*) ;

__attribute__((used)) static int liquidio_set_vf_link_state(struct net_device *netdev, int vfidx,
          int linkstate)
{
 struct lio *lio = GET_LIO(netdev);
 struct octeon_device *oct = lio->oct_dev;
 struct octnic_ctrl_pkt nctrl;
 int ret = 0;

 if (vfidx < 0 || vfidx >= oct->sriov_info.num_vfs_alloced)
  return -EINVAL;

 if (oct->sriov_info.vf_linkstate[vfidx] == linkstate)
  return 0;

 memset(&nctrl, 0, sizeof(struct octnic_ctrl_pkt));
 nctrl.ncmd.s.cmd = OCTNET_CMD_SET_VF_LINKSTATE;
 nctrl.ncmd.s.param1 =
     vfidx + 1;
 nctrl.ncmd.s.param2 = linkstate;
 nctrl.ncmd.s.more = 0;
 nctrl.iq_no = lio->linfo.txpciq[0].s.q_no;
 nctrl.cb_fn = ((void*)0);

 ret = octnet_send_nic_ctrl_pkt(oct, &nctrl);

 if (!ret)
  oct->sriov_info.vf_linkstate[vfidx] = linkstate;
 else if (ret > 0)
  ret = -EIO;

 return ret;
}
