
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
struct TYPE_3__ {int more; } ;
struct TYPE_4__ {TYPE_1__ s; } ;
struct octnic_ctrl_pkt {scalar_t__ iq_no; TYPE_2__* udd; TYPE_2__ ncmd; } ;
struct octeon_soft_command {int iq_no; int sc_status; int complete; scalar_t__ virtdptr; } ;
struct octeon_device {int dummy; } ;


 int OCTEON_REQUEST_PENDING ;
 int OCTNET_CMD_SIZE ;
 int OPCODE_NIC ;
 int OPCODE_NIC_CMD ;
 int init_completion (int *) ;
 int memcpy (int *,TYPE_2__*,int) ;
 scalar_t__ octeon_alloc_soft_command (struct octeon_device*,int,int,int ) ;
 int octeon_prepare_soft_command (struct octeon_device*,struct octeon_soft_command*,int ,int ,int ,int ,int ) ;
 int octeon_swap_8B_data (int *,int) ;

__attribute__((used)) static inline struct octeon_soft_command
*octnic_alloc_ctrl_pkt_sc(struct octeon_device *oct,
     struct octnic_ctrl_pkt *nctrl)
{
 struct octeon_soft_command *sc = ((void*)0);
 u8 *data;
 u32 rdatasize;
 u32 uddsize = 0, datasize = 0;

 uddsize = (u32)(nctrl->ncmd.s.more * 8);

 datasize = OCTNET_CMD_SIZE + uddsize;
 rdatasize = 16;

 sc = (struct octeon_soft_command *)
  octeon_alloc_soft_command(oct, datasize, rdatasize, 0);

 if (!sc)
  return ((void*)0);

 data = (u8 *)sc->virtdptr;

 memcpy(data, &nctrl->ncmd, OCTNET_CMD_SIZE);

 octeon_swap_8B_data((u64 *)data, (OCTNET_CMD_SIZE >> 3));

 if (uddsize) {

  memcpy(data + OCTNET_CMD_SIZE, nctrl->udd, uddsize);
 }

 sc->iq_no = (u32)nctrl->iq_no;

 octeon_prepare_soft_command(oct, sc, OPCODE_NIC, OPCODE_NIC_CMD,
        0, 0, 0);

 init_completion(&sc->complete);
 sc->sc_status = OCTEON_REQUEST_PENDING;

 return sc;
}
