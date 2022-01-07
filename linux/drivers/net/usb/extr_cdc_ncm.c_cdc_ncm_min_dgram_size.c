
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct usbnet {TYPE_1__* intf; } ;
struct TYPE_2__ {int cur_altsetting; } ;


 int CDC_MBIM_MIN_DATAGRAM_SIZE ;
 int CDC_NCM_MIN_DATAGRAM_SIZE ;
 scalar_t__ cdc_ncm_comm_intf_is_mbim (int ) ;

__attribute__((used)) static u32 cdc_ncm_min_dgram_size(struct usbnet *dev)
{
 if (cdc_ncm_comm_intf_is_mbim(dev->intf->cur_altsetting))
  return CDC_MBIM_MIN_DATAGRAM_SIZE;
 return CDC_NCM_MIN_DATAGRAM_SIZE;
}
