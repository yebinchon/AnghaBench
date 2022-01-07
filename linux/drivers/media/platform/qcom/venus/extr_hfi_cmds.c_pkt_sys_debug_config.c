
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u32 ;
struct TYPE_2__ {int size; int pkt_type; } ;
struct hfi_sys_set_property_pkt {int num_properties; int * data; TYPE_1__ hdr; } ;
struct hfi_debug_config {void* mode; void* config; } ;


 int HFI_CMD_SYS_SET_PROPERTY ;
 int HFI_PROPERTY_SYS_DEBUG_CONFIG ;

void pkt_sys_debug_config(struct hfi_sys_set_property_pkt *pkt, u32 mode,
     u32 config)
{
 struct hfi_debug_config *hfi;

 pkt->hdr.size = sizeof(*pkt) + sizeof(*hfi) + sizeof(u32);
 pkt->hdr.pkt_type = HFI_CMD_SYS_SET_PROPERTY;
 pkt->num_properties = 1;
 pkt->data[0] = HFI_PROPERTY_SYS_DEBUG_CONFIG;
 hfi = (struct hfi_debug_config *)&pkt->data[1];
 hfi->config = config;
 hfi->mode = mode;
}
