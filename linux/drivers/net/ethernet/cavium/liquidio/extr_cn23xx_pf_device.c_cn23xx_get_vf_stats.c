
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_5__ {int resp_needed; int len; int cmd; int type; } ;
struct TYPE_6__ {TYPE_1__ s; scalar_t__ u64; } ;
struct octeon_mbox_cmd {int q_no; int data; void* fn_arg; scalar_t__ fn; scalar_t__ recv_status; scalar_t__ recv_len; TYPE_2__ msg; } ;
struct TYPE_7__ {unsigned long long vf_drv_loaded_mask; int rings_per_vf; } ;
struct octeon_device {TYPE_4__* pci_dev; TYPE_3__ sriov_info; } ;
struct oct_vf_stats_ctx {int status; struct oct_vf_stats* stats; } ;
struct oct_vf_stats {int dummy; } ;
typedef scalar_t__ octeon_mbox_callback_t ;
struct TYPE_8__ {int dev; } ;


 scalar_t__ HZ ;
 int OCTEON_GET_VF_STATS ;
 int OCTEON_MBOX_REQUEST ;
 scalar_t__ atomic_read (int *) ;
 int atomic_set (int *,int ) ;
 scalar_t__ cn23xx_get_vf_stats_callback ;
 int dev_err (int *,char*,int) ;
 int memset (int ,int ,int) ;
 int octeon_mbox_cancel (struct octeon_device*,int ) ;
 int octeon_mbox_write (struct octeon_device*,struct octeon_mbox_cmd*) ;
 int schedule_timeout_uninterruptible (int) ;

int cn23xx_get_vf_stats(struct octeon_device *oct, int vfidx,
   struct oct_vf_stats *stats)
{
 u32 timeout = HZ;
 struct octeon_mbox_cmd mbox_cmd;
 struct oct_vf_stats_ctx ctx;
 u32 count = 0, ret;

 if (!(oct->sriov_info.vf_drv_loaded_mask & (1ULL << vfidx)))
  return -1;

 if (sizeof(struct oct_vf_stats) > sizeof(mbox_cmd.data))
  return -1;

 mbox_cmd.msg.u64 = 0;
 mbox_cmd.msg.s.type = OCTEON_MBOX_REQUEST;
 mbox_cmd.msg.s.resp_needed = 1;
 mbox_cmd.msg.s.cmd = OCTEON_GET_VF_STATS;
 mbox_cmd.msg.s.len = 1;
 mbox_cmd.q_no = vfidx * oct->sriov_info.rings_per_vf;
 mbox_cmd.recv_len = 0;
 mbox_cmd.recv_status = 0;
 mbox_cmd.fn = (octeon_mbox_callback_t)cn23xx_get_vf_stats_callback;
 ctx.stats = stats;
 atomic_set(&ctx.status, 0);
 mbox_cmd.fn_arg = (void *)&ctx;
 memset(mbox_cmd.data, 0, sizeof(mbox_cmd.data));
 octeon_mbox_write(oct, &mbox_cmd);

 do {
  schedule_timeout_uninterruptible(1);
 } while ((atomic_read(&ctx.status) == 0) && (count++ < timeout));

 ret = atomic_read(&ctx.status);
 if (ret == 0) {
  octeon_mbox_cancel(oct, 0);
  dev_err(&oct->pci_dev->dev, "Unable to get stats from VF-%d, timedout\n",
   vfidx);
  return -1;
 }

 return 0;
}
