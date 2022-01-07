
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u64 ;
struct octeon_soft_command {int caller_is_done; int sc_status; int complete; int iq_no; scalar_t__ virtrptr; } ;
struct octeon_device {TYPE_4__* pci_dev; } ;
struct oct_intrmod_resp {int intrmod; scalar_t__ status; } ;
struct oct_intrmod_cfg {int dummy; } ;
struct TYPE_7__ {TYPE_2__* txpciq; } ;
struct lio {TYPE_3__ linfo; struct octeon_device* oct_dev; } ;
struct TYPE_8__ {int dev; } ;
struct TYPE_5__ {int q_no; } ;
struct TYPE_6__ {TYPE_1__ s; } ;


 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int IQ_SEND_FAILED ;
 int OCTEON_REQUEST_PENDING ;
 int OPCODE_NIC ;
 int OPCODE_NIC_INTRMOD_PARAMS ;
 int WRITE_ONCE (int ,int) ;
 int dev_err (int *,char*) ;
 int init_completion (int *) ;
 int memcpy (struct oct_intrmod_cfg*,int *,int) ;
 int memset (struct oct_intrmod_resp*,int ,int) ;
 scalar_t__ octeon_alloc_soft_command (struct octeon_device*,int ,int,int ) ;
 int octeon_free_soft_command (struct octeon_device*,struct octeon_soft_command*) ;
 int octeon_prepare_soft_command (struct octeon_device*,struct octeon_soft_command*,int ,int ,int ,int ,int ) ;
 int octeon_send_soft_command (struct octeon_device*,struct octeon_soft_command*) ;
 int octeon_swap_8B_data (int *,int) ;
 int wait_for_sc_completion_timeout (struct octeon_device*,struct octeon_soft_command*,int ) ;

__attribute__((used)) static int octnet_get_intrmod_cfg(struct lio *lio,
      struct oct_intrmod_cfg *intr_cfg)
{
 struct octeon_soft_command *sc;
 struct oct_intrmod_resp *resp;
 int retval;
 struct octeon_device *oct_dev = lio->oct_dev;


 sc = (struct octeon_soft_command *)
  octeon_alloc_soft_command(oct_dev,
       0,
       sizeof(struct oct_intrmod_resp), 0);

 if (!sc)
  return -ENOMEM;

 resp = (struct oct_intrmod_resp *)sc->virtrptr;
 memset(resp, 0, sizeof(struct oct_intrmod_resp));

 sc->iq_no = lio->linfo.txpciq[0].s.q_no;

 octeon_prepare_soft_command(oct_dev, sc, OPCODE_NIC,
        OPCODE_NIC_INTRMOD_PARAMS, 0, 0, 0);

 init_completion(&sc->complete);
 sc->sc_status = OCTEON_REQUEST_PENDING;

 retval = octeon_send_soft_command(oct_dev, sc);
 if (retval == IQ_SEND_FAILED) {
  octeon_free_soft_command(oct_dev, sc);
  return -EINVAL;
 }




 retval = wait_for_sc_completion_timeout(oct_dev, sc, 0);
 if (retval)
  return -ENODEV;

 if (resp->status) {
  dev_err(&oct_dev->pci_dev->dev,
   "Get interrupt moderation parameters failed\n");
  WRITE_ONCE(sc->caller_is_done, 1);
  return -ENODEV;
 }

 octeon_swap_8B_data((u64 *)&resp->intrmod,
       (sizeof(struct oct_intrmod_cfg)) / 8);
 memcpy(intr_cfg, &resp->intrmod, sizeof(struct oct_intrmod_cfg));
 WRITE_ONCE(sc->caller_is_done, 1);

 return 0;
}
