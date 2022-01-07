
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* u32 ;
struct TYPE_3__ {int size; int pkt_type; } ;
struct TYPE_4__ {int session_id; TYPE_1__ hdr; } ;
struct hfi_session_init_pkt {void* session_codec; void* session_domain; TYPE_2__ shdr; } ;


 int EINVAL ;
 int HFI_CMD_SYS_SESSION_INIT ;
 int hash32_ptr (void*) ;

int pkt_session_init(struct hfi_session_init_pkt *pkt, void *cookie,
       u32 session_type, u32 codec)
{
 if (!pkt || !cookie || !codec)
  return -EINVAL;

 pkt->shdr.hdr.size = sizeof(*pkt);
 pkt->shdr.hdr.pkt_type = HFI_CMD_SYS_SESSION_INIT;
 pkt->shdr.session_id = hash32_ptr(cookie);
 pkt->session_domain = session_type;
 pkt->session_codec = codec;

 return 0;
}
