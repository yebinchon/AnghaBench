
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct usbnet {TYPE_1__* intf; scalar_t__* data; } ;
struct cdc_ncm_ctx {TYPE_3__* func_desc; TYPE_2__* mbim_desc; } ;
struct TYPE_6__ {int bmNetworkCapabilities; } ;
struct TYPE_5__ {int bmNetworkCapabilities; } ;
struct TYPE_4__ {int cur_altsetting; } ;


 scalar_t__ cdc_ncm_comm_intf_is_mbim (int ) ;

__attribute__((used)) static u8 cdc_ncm_flags(struct usbnet *dev)
{
 struct cdc_ncm_ctx *ctx = (struct cdc_ncm_ctx *)dev->data[0];

 if (cdc_ncm_comm_intf_is_mbim(dev->intf->cur_altsetting) && ctx->mbim_desc)
  return ctx->mbim_desc->bmNetworkCapabilities;
 if (ctx->func_desc)
  return ctx->func_desc->bmNetworkCapabilities;
 return 0;
}
