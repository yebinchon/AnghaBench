
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int size; int pkt_type; } ;
struct TYPE_4__ {TYPE_1__ hdr; int session_id; } ;
struct hfi_session_set_property_pkt {int* data; int num_properties; TYPE_2__ shdr; } ;
struct hfi_multi_stream_3x {int enable; int buffer_type; } ;
struct hfi_multi_stream {int enable; int buffer_type; } ;
struct hfi_intra_refresh_3x {int mbs; int mode; } ;
struct hfi_intra_refresh {int cir_mbs; int mode; } ;


 int EINVAL ;
 int HFI_CMD_SESSION_SET_PROPERTY ;
 int hash32_ptr (void*) ;
 int pkt_session_set_property_1x (struct hfi_session_set_property_pkt*,void*,int,void*) ;

__attribute__((used)) static int
pkt_session_set_property_3xx(struct hfi_session_set_property_pkt *pkt,
        void *cookie, u32 ptype, void *pdata)
{
 void *prop_data;
 int ret = 0;

 if (!pkt || !cookie || !pdata)
  return -EINVAL;

 prop_data = &pkt->data[1];

 pkt->shdr.hdr.size = sizeof(*pkt);
 pkt->shdr.hdr.pkt_type = HFI_CMD_SESSION_SET_PROPERTY;
 pkt->shdr.session_id = hash32_ptr(cookie);
 pkt->num_properties = 1;
 pkt->data[0] = ptype;






 switch (ptype) {
 case 129: {
  struct hfi_multi_stream *in = pdata;
  struct hfi_multi_stream_3x *multi = prop_data;

  multi->buffer_type = in->buffer_type;
  multi->enable = in->enable;
  pkt->shdr.hdr.size += sizeof(u32) + sizeof(*multi);
  break;
 }
 case 128: {
  struct hfi_intra_refresh *in = pdata;
  struct hfi_intra_refresh_3x *intra = prop_data;

  switch (in->mode) {
  case 132:
  case 135:
  case 134:
  case 133:
  case 131:
   break;
  default:
   ret = -EINVAL;
   break;
  }

  intra->mode = in->mode;
  intra->mbs = in->cir_mbs;
  pkt->shdr.hdr.size += sizeof(u32) + sizeof(*intra);
  break;
 }
 case 130:

  break;
 default:
  ret = pkt_session_set_property_1x(pkt, cookie, ptype, pdata);
  break;
 }

 return ret;
}
