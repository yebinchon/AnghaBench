
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int param1; int cmd; } ;
union octnet_cmd {TYPE_1__ s; scalar_t__ u64; } ;
typedef int u64 ;
struct octeon_soft_command {int caller_is_done; int sc_status; int complete; int iq_no; scalar_t__ virtdptr; } ;
struct octeon_device {TYPE_5__* props; } ;
struct TYPE_9__ {TYPE_3__* txpciq; } ;
struct lio {size_t ifidx; int netdev; TYPE_4__ linfo; scalar_t__ oct_dev; } ;
struct TYPE_10__ {int rx_on; } ;
struct TYPE_7__ {int q_no; } ;
struct TYPE_8__ {TYPE_2__ s; } ;


 int IQ_SEND_FAILED ;
 int OCTEON_REQUEST_PENDING ;
 int OCTNET_CMD_RX_CTL ;
 int OCTNET_CMD_SIZE ;
 int OPCODE_NIC ;
 int OPCODE_NIC_CMD ;
 int WRITE_ONCE (int ,int) ;
 int init_completion (int *) ;
 int netif_info (struct lio*,int ,int ,char*) ;
 scalar_t__ octeon_alloc_soft_command (struct octeon_device*,int,int,int ) ;
 int octeon_free_soft_command (struct octeon_device*,struct octeon_soft_command*) ;
 int octeon_prepare_soft_command (struct octeon_device*,struct octeon_soft_command*,int ,int ,int ,int ,int ) ;
 int octeon_send_soft_command (struct octeon_device*,struct octeon_soft_command*) ;
 int octeon_swap_8B_data (int *,int) ;
 int rx_err ;
 int wait_for_sc_completion_timeout (struct octeon_device*,struct octeon_soft_command*,int ) ;

__attribute__((used)) static void send_rx_ctrl_cmd(struct lio *lio, int start_stop)
{
 struct octeon_soft_command *sc;
 union octnet_cmd *ncmd;
 struct octeon_device *oct = (struct octeon_device *)lio->oct_dev;
 int retval;

 if (oct->props[lio->ifidx].rx_on == start_stop)
  return;

 sc = (struct octeon_soft_command *)
  octeon_alloc_soft_command(oct, OCTNET_CMD_SIZE,
       16, 0);
 if (!sc) {
  netif_info(lio, rx_err, lio->netdev,
      "Failed to allocate octeon_soft_command\n");
  return;
 }

 ncmd = (union octnet_cmd *)sc->virtdptr;

 ncmd->u64 = 0;
 ncmd->s.cmd = OCTNET_CMD_RX_CTL;
 ncmd->s.param1 = start_stop;

 octeon_swap_8B_data((u64 *)ncmd, (OCTNET_CMD_SIZE >> 3));

 sc->iq_no = lio->linfo.txpciq[0].s.q_no;

 octeon_prepare_soft_command(oct, sc, OPCODE_NIC,
        OPCODE_NIC_CMD, 0, 0, 0);

 init_completion(&sc->complete);
 sc->sc_status = OCTEON_REQUEST_PENDING;

 retval = octeon_send_soft_command(oct, sc);
 if (retval == IQ_SEND_FAILED) {
  netif_info(lio, rx_err, lio->netdev, "Failed to send RX Control message\n");
  octeon_free_soft_command(oct, sc);
  return;
 } else {



  retval = wait_for_sc_completion_timeout(oct, sc, 0);
  if (retval)
   return;

  oct->props[lio->ifidx].rx_on = start_stop;
  WRITE_ONCE(sc->caller_is_done, 1);
 }
}
