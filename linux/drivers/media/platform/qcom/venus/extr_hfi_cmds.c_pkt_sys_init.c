
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int size; int pkt_type; } ;
struct hfi_sys_init_pkt {int arch_type; TYPE_1__ hdr; } ;


 int HFI_CMD_SYS_INIT ;

void pkt_sys_init(struct hfi_sys_init_pkt *pkt, u32 arch_type)
{
 pkt->hdr.size = sizeof(*pkt);
 pkt->hdr.pkt_type = HFI_CMD_SYS_INIT;
 pkt->arch_type = arch_type;
}
