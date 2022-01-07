
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int size; int pkt_type; } ;
struct TYPE_4__ {int session_id; TYPE_1__ hdr; } ;
struct hfi_session_flush_pkt {int flush_type; TYPE_2__ shdr; } ;


 int EINVAL ;
 int HFI_CMD_SESSION_FLUSH ;




 int hash32_ptr (void*) ;

int pkt_session_flush(struct hfi_session_flush_pkt *pkt, void *cookie, u32 type)
{
 switch (type) {
 case 130:
 case 129:
 case 128:
 case 131:
  break;
 default:
  return -EINVAL;
 }

 pkt->shdr.hdr.size = sizeof(*pkt);
 pkt->shdr.hdr.pkt_type = HFI_CMD_SESSION_FLUSH;
 pkt->shdr.session_id = hash32_ptr(cookie);
 pkt->flush_type = type;

 return 0;
}
