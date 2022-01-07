
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int size; int pkt_type; } ;
struct hfi_sys_release_resource_pkt {int resource_type; int resource_handle; TYPE_1__ hdr; } ;


 int ENOTSUPP ;
 int HFI_CMD_SYS_RELEASE_RESOURCE ;
 int HFI_RESOURCE_OCMEM ;



 int hash32_ptr (void*) ;

int pkt_sys_unset_resource(struct hfi_sys_release_resource_pkt *pkt, u32 id,
      u32 size, void *cookie)
{
 pkt->hdr.size = sizeof(*pkt);
 pkt->hdr.pkt_type = HFI_CMD_SYS_RELEASE_RESOURCE;
 pkt->resource_handle = hash32_ptr(cookie);

 switch (id) {
 case 129:
 case 128:
  pkt->resource_type = HFI_RESOURCE_OCMEM;
  break;
 case 130:
  break;
 default:
  return -ENOTSUPP;
 }

 return 0;
}
