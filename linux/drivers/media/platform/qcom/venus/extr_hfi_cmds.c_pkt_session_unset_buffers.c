
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct hfi_session_set_buffers_pkt {int dummy; } ;
struct TYPE_3__ {int size; int pkt_type; } ;
struct TYPE_4__ {TYPE_1__ hdr; int session_id; } ;
struct hfi_session_release_buffer_pkt {unsigned int num_buffers; scalar_t__ buffer_type; int response_req; TYPE_2__ shdr; scalar_t__ extradata_size; int * buffer_info; int buffer_size; } ;
struct hfi_buffer_info {int extradata_addr; int buffer_addr; } ;
struct hfi_buffer_desc {unsigned int num_buffers; scalar_t__ buffer_type; int response_required; int device_addr; int extradata_addr; int buffer_size; } ;


 int EINVAL ;
 scalar_t__ HFI_BUFFER_OUTPUT ;
 scalar_t__ HFI_BUFFER_OUTPUT2 ;
 int HFI_CMD_SESSION_RELEASE_BUFFERS ;
 int hash32_ptr (void*) ;

int pkt_session_unset_buffers(struct hfi_session_release_buffer_pkt *pkt,
         void *cookie, struct hfi_buffer_desc *bd)
{
 unsigned int i;

 if (!cookie || !pkt || !bd)
  return -EINVAL;

 pkt->shdr.hdr.pkt_type = HFI_CMD_SESSION_RELEASE_BUFFERS;
 pkt->shdr.session_id = hash32_ptr(cookie);
 pkt->buffer_size = bd->buffer_size;
 pkt->num_buffers = bd->num_buffers;

 if (bd->buffer_type == HFI_BUFFER_OUTPUT ||
     bd->buffer_type == HFI_BUFFER_OUTPUT2) {
  struct hfi_buffer_info *bi;

  bi = (struct hfi_buffer_info *)pkt->buffer_info;
  for (i = 0; i < pkt->num_buffers; i++) {
   bi->buffer_addr = bd->device_addr;
   bi->extradata_addr = bd->extradata_addr;
  }
  pkt->shdr.hdr.size =
    sizeof(struct hfi_session_set_buffers_pkt) -
    sizeof(u32) + (bd->num_buffers * sizeof(*bi));
 } else {
  for (i = 0; i < pkt->num_buffers; i++)
   pkt->buffer_info[i] = bd->device_addr;

  pkt->extradata_size = 0;
  pkt->shdr.hdr.size =
    sizeof(struct hfi_session_set_buffers_pkt) +
    ((bd->num_buffers - 1) * sizeof(u32));
 }

 pkt->response_req = bd->response_required;
 pkt->buffer_type = bd->buffer_type;

 return 0;
}
