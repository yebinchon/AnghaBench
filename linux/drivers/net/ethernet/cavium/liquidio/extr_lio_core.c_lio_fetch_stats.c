
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


struct work_struct {int dummy; } ;
struct octeon_soft_command {int caller_is_done; int sc_status; int iq_no; int complete; scalar_t__ virtrptr; } ;
struct TYPE_9__ {scalar_t__ num_vfs_alloced; } ;
struct TYPE_8__ {int app_cap_flags; } ;
struct octeon_device {int vfstats_poll; TYPE_6__* pci_dev; TYPE_2__ sriov_info; TYPE_1__ fw_info; } ;
struct oct_nic_stats_resp {int dummy; } ;
struct TYPE_14__ {int work; } ;
struct TYPE_12__ {TYPE_4__* txpciq; } ;
struct lio {TYPE_7__ stats_wk; TYPE_5__ linfo; struct octeon_device* oct_dev; } ;
struct cavium_wk {struct lio* ctxptr; } ;
struct TYPE_13__ {int dev; } ;
struct TYPE_10__ {int q_no; } ;
struct TYPE_11__ {TYPE_3__ s; } ;


 int IQ_SEND_FAILED ;
 int LIO_IFSTATE_RUNNING ;
 int LIO_SC_MAX_TMO_MS ;
 int LIO_VFSTATS_POLL ;
 int LIQUIDIO_NDEV_STATS_POLL_TIME_MS ;
 int LIQUIDIO_SPOOFCHK_CAP ;
 scalar_t__ OCTEON_CN23XX_PF (struct octeon_device*) ;
 int OCTEON_REQUEST_PENDING ;
 int OPCODE_NIC ;
 int OPCODE_NIC_PORT_STATS ;
 int WRITE_ONCE (int ,int) ;
 int dev_err (int *,char*) ;
 scalar_t__ ifstate_check (struct lio*,int ) ;
 int init_completion (int *) ;
 int lio_fetch_vf_stats (struct lio*) ;
 int memset (struct oct_nic_stats_resp*,int ,int) ;
 unsigned long msecs_to_jiffies (int ) ;
 scalar_t__ octeon_alloc_soft_command (struct octeon_device*,int ,int,int ) ;
 int octeon_free_soft_command (struct octeon_device*,struct octeon_soft_command*) ;
 int octeon_prepare_soft_command (struct octeon_device*,struct octeon_soft_command*,int ,int ,int ,int ,int ) ;
 int octeon_send_soft_command (struct octeon_device*,struct octeon_soft_command*) ;
 int octnet_nic_stats_callback (struct octeon_device*,int ,struct octeon_soft_command*) ;
 int schedule_delayed_work (int *,unsigned long) ;
 int wait_for_sc_completion_timeout (struct octeon_device*,struct octeon_soft_command*,int) ;

void lio_fetch_stats(struct work_struct *work)
{
 struct cavium_wk *wk = (struct cavium_wk *)work;
 struct lio *lio = wk->ctxptr;
 struct octeon_device *oct_dev = lio->oct_dev;
 struct octeon_soft_command *sc;
 struct oct_nic_stats_resp *resp;
 unsigned long time_in_jiffies;
 int retval;

 if (OCTEON_CN23XX_PF(oct_dev)) {

  if (!(oct_dev->vfstats_poll % LIO_VFSTATS_POLL) &&
      (oct_dev->fw_info.app_cap_flags & LIQUIDIO_SPOOFCHK_CAP) &&
      oct_dev->sriov_info.num_vfs_alloced) {
   lio_fetch_vf_stats(lio);
  }

  oct_dev->vfstats_poll++;
 }


 sc = (struct octeon_soft_command *)
  octeon_alloc_soft_command(oct_dev,
       0,
       sizeof(struct oct_nic_stats_resp),
       0);

 if (!sc) {
  dev_err(&oct_dev->pci_dev->dev, "Soft command allocation failed\n");
  goto lio_fetch_stats_exit;
 }

 resp = (struct oct_nic_stats_resp *)sc->virtrptr;
 memset(resp, 0, sizeof(struct oct_nic_stats_resp));

 init_completion(&sc->complete);
 sc->sc_status = OCTEON_REQUEST_PENDING;

 sc->iq_no = lio->linfo.txpciq[0].s.q_no;

 octeon_prepare_soft_command(oct_dev, sc, OPCODE_NIC,
        OPCODE_NIC_PORT_STATS, 0, 0, 0);

 retval = octeon_send_soft_command(oct_dev, sc);
 if (retval == IQ_SEND_FAILED) {
  octeon_free_soft_command(oct_dev, sc);
  goto lio_fetch_stats_exit;
 }

 retval = wait_for_sc_completion_timeout(oct_dev, sc,
      (2 * LIO_SC_MAX_TMO_MS));
 if (retval) {
  dev_err(&oct_dev->pci_dev->dev, "sc OPCODE_NIC_PORT_STATS command failed\n");
  goto lio_fetch_stats_exit;
 }

 octnet_nic_stats_callback(oct_dev, sc->sc_status, sc);
 WRITE_ONCE(sc->caller_is_done, 1);

lio_fetch_stats_exit:
 time_in_jiffies = msecs_to_jiffies(LIQUIDIO_NDEV_STATS_POLL_TIME_MS);
 if (ifstate_check(lio, LIO_IFSTATE_RUNNING))
  schedule_delayed_work(&lio->stats_wk.work, time_in_jiffies);

 return;
}
