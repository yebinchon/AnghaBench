
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {int len; int params; int cmd; scalar_t__ resp_needed; int type; } ;
struct TYPE_5__ {TYPE_1__ s; scalar_t__ u64; } ;
struct octeon_mbox_cmd {int q_no; TYPE_2__ msg; int * fn_arg; int * fn; scalar_t__ recv_status; scalar_t__ recv_len; } ;
struct TYPE_6__ {int vf_drv_loaded_mask; int rings_per_vf; } ;
struct octeon_device {TYPE_3__ sriov_info; } ;


 int BIT_ULL (int) ;
 int OCTEON_MBOX_REQUEST ;
 int OCTEON_PF_CHANGED_VF_MACADDR ;
 int ether_addr_copy (int ,int *) ;
 int octeon_mbox_write (struct octeon_device*,struct octeon_mbox_cmd*) ;

void cn23xx_tell_vf_its_macaddr_changed(struct octeon_device *oct, int vfidx,
     u8 *mac)
{
 if (oct->sriov_info.vf_drv_loaded_mask & BIT_ULL(vfidx)) {
  struct octeon_mbox_cmd mbox_cmd;

  mbox_cmd.msg.u64 = 0;
  mbox_cmd.msg.s.type = OCTEON_MBOX_REQUEST;
  mbox_cmd.msg.s.resp_needed = 0;
  mbox_cmd.msg.s.cmd = OCTEON_PF_CHANGED_VF_MACADDR;
  mbox_cmd.msg.s.len = 1;
  mbox_cmd.recv_len = 0;
  mbox_cmd.recv_status = 0;
  mbox_cmd.fn = ((void*)0);
  mbox_cmd.fn_arg = ((void*)0);
  ether_addr_copy(mbox_cmd.msg.s.params, mac);
  mbox_cmd.q_no = vfidx * oct->sriov_info.rings_per_vf;
  octeon_mbox_write(oct, &mbox_cmd);
 }
}
