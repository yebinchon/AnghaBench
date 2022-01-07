
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


typedef int u64 ;
struct work_struct {int dummy; } ;
struct timespec64 {int tv_nsec; int tv_sec; } ;
struct octeon_soft_command {int caller_is_done; int sc_status; int complete; int iq_no; scalar_t__ virtdptr; } ;
struct octeon_device {TYPE_4__* pci_dev; } ;
struct lio_time {int nsec; int sec; } ;
struct TYPE_11__ {int work; } ;
struct TYPE_12__ {TYPE_5__ wk; int wq; } ;
struct TYPE_9__ {TYPE_2__* txpciq; } ;
struct lio {TYPE_6__ sync_octeon_time_wq; TYPE_3__ linfo; struct octeon_device* oct_dev; } ;
struct cavium_wk {scalar_t__ ctxptr; } ;
struct TYPE_10__ {int dev; } ;
struct TYPE_7__ {int q_no; } ;
struct TYPE_8__ {TYPE_1__ s; } ;


 int IQ_SEND_FAILED ;
 int LIO_SYNC_OCTEON_TIME_INTERVAL_MS ;
 int OCTEON_REQUEST_PENDING ;
 int OPCODE_NIC ;
 int OPCODE_NIC_SYNC_OCTEON_TIME ;
 int WRITE_ONCE (int ,int) ;
 int dev_err (int *,char*) ;
 int init_completion (int *) ;
 int ktime_get_real_ts64 (struct timespec64*) ;
 int msecs_to_jiffies (int ) ;
 struct octeon_soft_command* octeon_alloc_soft_command (struct octeon_device*,int,int,int ) ;
 int octeon_free_soft_command (struct octeon_device*,struct octeon_soft_command*) ;
 int octeon_prepare_soft_command (struct octeon_device*,struct octeon_soft_command*,int ,int ,int ,int ,int ) ;
 int octeon_send_soft_command (struct octeon_device*,struct octeon_soft_command*) ;
 int octeon_swap_8B_data (int *,int) ;
 int queue_delayed_work (int ,int *,int ) ;

__attribute__((used)) static void lio_sync_octeon_time(struct work_struct *work)
{
 struct cavium_wk *wk = (struct cavium_wk *)work;
 struct lio *lio = (struct lio *)wk->ctxptr;
 struct octeon_device *oct = lio->oct_dev;
 struct octeon_soft_command *sc;
 struct timespec64 ts;
 struct lio_time *lt;
 int ret;

 sc = octeon_alloc_soft_command(oct, sizeof(struct lio_time), 16, 0);
 if (!sc) {
  dev_err(&oct->pci_dev->dev,
   "Failed to sync time to octeon: soft command allocation failed\n");
  return;
 }

 lt = (struct lio_time *)sc->virtdptr;


 ktime_get_real_ts64(&ts);
 lt->sec = ts.tv_sec;
 lt->nsec = ts.tv_nsec;
 octeon_swap_8B_data((u64 *)lt, (sizeof(struct lio_time)) / 8);

 sc->iq_no = lio->linfo.txpciq[0].s.q_no;
 octeon_prepare_soft_command(oct, sc, OPCODE_NIC,
        OPCODE_NIC_SYNC_OCTEON_TIME, 0, 0, 0);

 init_completion(&sc->complete);
 sc->sc_status = OCTEON_REQUEST_PENDING;

 ret = octeon_send_soft_command(oct, sc);
 if (ret == IQ_SEND_FAILED) {
  dev_err(&oct->pci_dev->dev,
   "Failed to sync time to octeon: failed to send soft command\n");
  octeon_free_soft_command(oct, sc);
 } else {
  WRITE_ONCE(sc->caller_is_done, 1);
 }

 queue_delayed_work(lio->sync_octeon_time_wq.wq,
      &lio->sync_octeon_time_wq.wk.work,
      msecs_to_jiffies(LIO_SYNC_OCTEON_TIME_INTERVAL_MS));
}
