
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct octeon_soft_command {int caller_is_done; int sc_status; int complete; int iq_no; } ;
struct octeon_device {int dummy; } ;
struct TYPE_6__ {TYPE_2__* txpciq; } ;
struct lio {TYPE_3__ linfo; struct octeon_device* oct_dev; } ;
struct TYPE_4__ {int q_no; } ;
struct TYPE_5__ {TYPE_1__ s; } ;


 int ENOMEM ;
 int IQ_SEND_FAILED ;
 int OCTEON_REQUEST_PENDING ;
 int OPCODE_NIC ;
 int OPCODE_NIC_SET_TRUSTED_VF ;
 int WRITE_ONCE (int ,int) ;
 int init_completion (int *) ;
 struct octeon_soft_command* octeon_alloc_soft_command (struct octeon_device*,int ,int,int ) ;
 int octeon_free_soft_command (struct octeon_device*,struct octeon_soft_command*) ;
 int octeon_prepare_soft_command (struct octeon_device*,struct octeon_soft_command*,int ,int ,int ,int,int) ;
 int octeon_send_soft_command (struct octeon_device*,struct octeon_soft_command*) ;
 int wait_for_sc_completion_timeout (struct octeon_device*,struct octeon_soft_command*,int ) ;

__attribute__((used)) static int liquidio_send_vf_trust_cmd(struct lio *lio, int vfidx, bool trusted)
{
 struct octeon_device *oct = lio->oct_dev;
 struct octeon_soft_command *sc;
 int retval;

 sc = octeon_alloc_soft_command(oct, 0, 16, 0);
 if (!sc)
  return -ENOMEM;

 sc->iq_no = lio->linfo.txpciq[0].s.q_no;


 octeon_prepare_soft_command(oct, sc, OPCODE_NIC,
        OPCODE_NIC_SET_TRUSTED_VF, 0, vfidx + 1,
        trusted);

 init_completion(&sc->complete);
 sc->sc_status = OCTEON_REQUEST_PENDING;

 retval = octeon_send_soft_command(oct, sc);
 if (retval == IQ_SEND_FAILED) {
  octeon_free_soft_command(oct, sc);
  retval = -1;
 } else {

  retval = wait_for_sc_completion_timeout(oct, sc, 0);
  if (retval)
   return (retval);

  WRITE_ONCE(sc->caller_is_done, 1);
 }

 return retval;
}
