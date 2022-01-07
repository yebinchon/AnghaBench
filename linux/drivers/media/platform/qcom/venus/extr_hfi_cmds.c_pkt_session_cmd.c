
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int size; int pkt_type; } ;
struct TYPE_4__ {int session_id; TYPE_1__ hdr; } ;
struct hfi_session_pkt {TYPE_2__ shdr; } ;


 int hash32_ptr (void*) ;

void pkt_session_cmd(struct hfi_session_pkt *pkt, u32 pkt_type, void *cookie)
{
 pkt->shdr.hdr.size = sizeof(*pkt);
 pkt->shdr.hdr.pkt_type = pkt_type;
 pkt->shdr.session_id = hash32_ptr(cookie);
}
