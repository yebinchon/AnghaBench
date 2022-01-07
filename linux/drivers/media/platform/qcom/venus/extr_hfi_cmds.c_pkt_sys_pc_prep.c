
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int size; int pkt_type; } ;
struct hfi_sys_pc_prep_pkt {TYPE_1__ hdr; } ;


 int HFI_CMD_SYS_PC_PREP ;

void pkt_sys_pc_prep(struct hfi_sys_pc_prep_pkt *pkt)
{
 pkt->hdr.size = sizeof(*pkt);
 pkt->hdr.pkt_type = HFI_CMD_SYS_PC_PREP;
}
