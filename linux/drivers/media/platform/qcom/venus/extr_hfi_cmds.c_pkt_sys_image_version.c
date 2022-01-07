
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int size; int pkt_type; } ;
struct hfi_sys_get_property_pkt {int num_properties; int * data; TYPE_1__ hdr; } ;


 int HFI_CMD_SYS_GET_PROPERTY ;
 int HFI_PROPERTY_SYS_IMAGE_VERSION ;

void pkt_sys_image_version(struct hfi_sys_get_property_pkt *pkt)
{
 pkt->hdr.size = sizeof(*pkt);
 pkt->hdr.pkt_type = HFI_CMD_SYS_GET_PROPERTY;
 pkt->num_properties = 1;
 pkt->data[0] = HFI_PROPERTY_SYS_IMAGE_VERSION;
}
