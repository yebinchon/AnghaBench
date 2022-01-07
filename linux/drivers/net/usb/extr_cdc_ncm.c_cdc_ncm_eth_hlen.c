
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usbnet {TYPE_1__* intf; } ;
struct TYPE_2__ {int cur_altsetting; } ;


 int ETH_HLEN ;
 scalar_t__ cdc_ncm_comm_intf_is_mbim (int ) ;

__attribute__((used)) static int cdc_ncm_eth_hlen(struct usbnet *dev)
{
 if (cdc_ncm_comm_intf_is_mbim(dev->intf->cur_altsetting))
  return 0;
 return ETH_HLEN;
}
