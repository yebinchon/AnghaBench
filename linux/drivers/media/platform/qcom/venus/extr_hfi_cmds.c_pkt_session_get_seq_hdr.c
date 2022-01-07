
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* u32 ;
struct TYPE_3__ {int size; int pkt_type; } ;
struct TYPE_4__ {int session_id; TYPE_1__ hdr; } ;
struct hfi_session_get_sequence_header_pkt {void* packet_buffer; void* buffer_len; TYPE_2__ shdr; } ;


 int EINVAL ;
 int HFI_CMD_SESSION_GET_SEQUENCE_HEADER ;
 int hash32_ptr (void*) ;

int pkt_session_get_seq_hdr(struct hfi_session_get_sequence_header_pkt *pkt,
       void *cookie, u32 seq_hdr, u32 seq_hdr_len)
{
 if (!cookie || !seq_hdr || !seq_hdr_len)
  return -EINVAL;

 pkt->shdr.hdr.size = sizeof(*pkt);
 pkt->shdr.hdr.pkt_type = HFI_CMD_SESSION_GET_SEQUENCE_HEADER;
 pkt->shdr.session_id = hash32_ptr(cookie);
 pkt->buffer_len = seq_hdr_len;
 pkt->packet_buffer = seq_hdr;

 return 0;
}
