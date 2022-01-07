
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int size; int pkt_type; } ;
struct hfi_sys_set_resource_pkt {TYPE_1__ hdr; int resource_type; int * resource_data; int resource_handle; } ;
struct hfi_resource_ocmem {int size; int mem; } ;


 int ENOTSUPP ;
 int HFI_CMD_SYS_SET_RESOURCE ;
 int HFI_RESOURCE_OCMEM ;



 int hash32_ptr (void*) ;

int pkt_sys_set_resource(struct hfi_sys_set_resource_pkt *pkt, u32 id, u32 size,
    u32 addr, void *cookie)
{
 pkt->hdr.size = sizeof(*pkt);
 pkt->hdr.pkt_type = HFI_CMD_SYS_SET_RESOURCE;
 pkt->resource_handle = hash32_ptr(cookie);

 switch (id) {
 case 129:
 case 128: {
  struct hfi_resource_ocmem *res =
   (struct hfi_resource_ocmem *)&pkt->resource_data[0];

  res->size = size;
  res->mem = addr;
  pkt->resource_type = HFI_RESOURCE_OCMEM;
  pkt->hdr.size += sizeof(*res) - sizeof(u32);
  break;
 }
 case 130:
 default:
  return -ENOTSUPP;
 }

 return 0;
}
