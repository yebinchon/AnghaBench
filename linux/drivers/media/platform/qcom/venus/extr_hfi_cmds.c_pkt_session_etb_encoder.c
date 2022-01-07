
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int size; int pkt_type; } ;
struct TYPE_4__ {int session_id; TYPE_1__ hdr; } ;
struct hfi_session_empty_buffer_uncompressed_plane0_pkt {int extradata_buffer; scalar_t__ packet_buffer; int input_tag; int filled_len; int alloc_len; int offset; int mark_data; int mark_target; int flags; int time_stamp_lo; int time_stamp_hi; scalar_t__ view_id; TYPE_2__ shdr; } ;
struct hfi_frame_data {int extradata_addr; scalar_t__ device_addr; int clnt_data; int filled_len; int alloc_len; int offset; int mark_data; int mark_target; int flags; int timestamp; } ;


 int EINVAL ;
 int HFI_CMD_SESSION_EMPTY_BUFFER ;
 int hash32_ptr (void*) ;
 int lower_32_bits (int ) ;
 int upper_32_bits (int ) ;

int pkt_session_etb_encoder(
  struct hfi_session_empty_buffer_uncompressed_plane0_pkt *pkt,
  void *cookie, struct hfi_frame_data *in_frame)
{
 if (!cookie || !in_frame->device_addr)
  return -EINVAL;

 pkt->shdr.hdr.size = sizeof(*pkt);
 pkt->shdr.hdr.pkt_type = HFI_CMD_SESSION_EMPTY_BUFFER;
 pkt->shdr.session_id = hash32_ptr(cookie);
 pkt->view_id = 0;
 pkt->time_stamp_hi = upper_32_bits(in_frame->timestamp);
 pkt->time_stamp_lo = lower_32_bits(in_frame->timestamp);
 pkt->flags = in_frame->flags;
 pkt->mark_target = in_frame->mark_target;
 pkt->mark_data = in_frame->mark_data;
 pkt->offset = in_frame->offset;
 pkt->alloc_len = in_frame->alloc_len;
 pkt->filled_len = in_frame->filled_len;
 pkt->input_tag = in_frame->clnt_data;
 pkt->packet_buffer = in_frame->device_addr;
 pkt->extradata_buffer = in_frame->extradata_addr;

 return 0;
}
