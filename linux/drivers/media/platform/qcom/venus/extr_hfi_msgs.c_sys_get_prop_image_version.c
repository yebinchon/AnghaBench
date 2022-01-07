
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int size; } ;
struct hfi_msg_sys_property_info_pkt {int num_properties; int * data; TYPE_1__ hdr; } ;
struct device {int dummy; } ;


 int dev_dbg (struct device*,char*,int *) ;

__attribute__((used)) static void
sys_get_prop_image_version(struct device *dev,
      struct hfi_msg_sys_property_info_pkt *pkt)
{
 int req_bytes;

 req_bytes = pkt->hdr.size - sizeof(*pkt);

 if (req_bytes < 128 || !pkt->data[1] || pkt->num_properties > 1)

  return;

 dev_dbg(dev, "F/W version: %s\n", (u8 *)&pkt->data[1]);
}
