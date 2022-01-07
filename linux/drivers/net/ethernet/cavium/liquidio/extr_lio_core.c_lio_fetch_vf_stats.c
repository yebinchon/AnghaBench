
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u64 ;
struct octeon_soft_command {scalar_t__ sc_status; int caller_is_done; int iq_no; int complete; scalar_t__ virtrptr; } ;
struct octeon_device {TYPE_4__* pci_dev; } ;
struct oct_nic_vf_stats_resp {scalar_t__ spoofmac_cnt; int status; } ;
struct TYPE_7__ {TYPE_2__* txpciq; } ;
struct lio {TYPE_3__ linfo; struct octeon_device* oct_dev; } ;
struct TYPE_8__ {int dev; } ;
struct TYPE_5__ {int q_no; } ;
struct TYPE_6__ {TYPE_1__ s; } ;


 int ENOMEM ;
 int IQ_SEND_FAILED ;
 int LIO_SC_MAX_TMO_MS ;
 scalar_t__ OCTEON_REQUEST_PENDING ;
 scalar_t__ OCTEON_REQUEST_TIMEOUT ;
 int OPCODE_NIC ;
 int OPCODE_NIC_VF_PORT_STATS ;
 int WRITE_ONCE (int ,int) ;
 int dev_err (int *,char*) ;
 int dev_warn (int *,char*,scalar_t__) ;
 int init_completion (int *) ;
 int memset (struct oct_nic_vf_stats_resp*,int ,int) ;
 scalar_t__ octeon_alloc_soft_command (struct octeon_device*,int ,int,int ) ;
 int octeon_free_soft_command (struct octeon_device*,struct octeon_soft_command*) ;
 int octeon_prepare_soft_command (struct octeon_device*,struct octeon_soft_command*,int ,int ,int ,int ,int ) ;
 int octeon_send_soft_command (struct octeon_device*,struct octeon_soft_command*) ;
 int octeon_swap_8B_data (int *,int) ;
 int wait_for_sc_completion_timeout (struct octeon_device*,struct octeon_soft_command*,int) ;

__attribute__((used)) static int lio_fetch_vf_stats(struct lio *lio)
{
 struct octeon_device *oct_dev = lio->oct_dev;
 struct octeon_soft_command *sc;
 struct oct_nic_vf_stats_resp *resp;

 int retval;


 sc = (struct octeon_soft_command *)
  octeon_alloc_soft_command(oct_dev,
       0,
       sizeof(struct oct_nic_vf_stats_resp),
       0);

 if (!sc) {
  dev_err(&oct_dev->pci_dev->dev, "Soft command allocation failed\n");
  retval = -ENOMEM;
  goto lio_fetch_vf_stats_exit;
 }

 resp = (struct oct_nic_vf_stats_resp *)sc->virtrptr;
 memset(resp, 0, sizeof(struct oct_nic_vf_stats_resp));

 init_completion(&sc->complete);
 sc->sc_status = OCTEON_REQUEST_PENDING;

 sc->iq_no = lio->linfo.txpciq[0].s.q_no;

 octeon_prepare_soft_command(oct_dev, sc, OPCODE_NIC,
        OPCODE_NIC_VF_PORT_STATS, 0, 0, 0);

 retval = octeon_send_soft_command(oct_dev, sc);
 if (retval == IQ_SEND_FAILED) {
  octeon_free_soft_command(oct_dev, sc);
  goto lio_fetch_vf_stats_exit;
 }

 retval =
  wait_for_sc_completion_timeout(oct_dev, sc,
            (2 * LIO_SC_MAX_TMO_MS));
 if (retval) {
  dev_err(&oct_dev->pci_dev->dev,
   "sc OPCODE_NIC_VF_PORT_STATS command failed\n");
  goto lio_fetch_vf_stats_exit;
 }

 if (sc->sc_status != OCTEON_REQUEST_TIMEOUT && !resp->status) {
  octeon_swap_8B_data((u64 *)&resp->spoofmac_cnt,
        (sizeof(u64)) >> 3);

  if (resp->spoofmac_cnt != 0) {
   dev_warn(&oct_dev->pci_dev->dev,
     "%llu Spoofed packets detected\n",
     resp->spoofmac_cnt);
  }
 }
 WRITE_ONCE(sc->caller_is_done, 1);

lio_fetch_vf_stats_exit:
 return retval;
}
