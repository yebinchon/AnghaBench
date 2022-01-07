
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int size; int pkt_type; } ;
struct hfi_sys_ping_pkt {int client_data; TYPE_1__ hdr; } ;


 int HFI_CMD_SYS_PING ;

void pkt_sys_ping(struct hfi_sys_ping_pkt *pkt, u32 cookie)
{
 pkt->hdr.size = sizeof(*pkt);
 pkt->hdr.pkt_type = HFI_CMD_SYS_PING;
 pkt->client_data = cookie;
}
