
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int size; int pkt_type; } ;
struct TYPE_4__ {int session_id; TYPE_1__ hdr; } ;
struct hfi_session_get_property_pkt {int num_properties; int* data; TYPE_2__ shdr; } ;


 int EINVAL ;
 int HFI_CMD_SESSION_GET_PROPERTY ;


 int hash32_ptr (void*) ;

__attribute__((used)) static int pkt_session_get_property_1x(struct hfi_session_get_property_pkt *pkt,
           void *cookie, u32 ptype)
{
 switch (ptype) {
 case 128:
 case 129:
  break;
 default:
  return -EINVAL;
 }

 pkt->shdr.hdr.size = sizeof(*pkt);
 pkt->shdr.hdr.pkt_type = HFI_CMD_SESSION_GET_PROPERTY;
 pkt->shdr.session_id = hash32_ptr(cookie);
 pkt->num_properties = 1;
 pkt->data[0] = ptype;

 return 0;
}
