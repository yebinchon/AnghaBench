
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct usbnet {TYPE_1__* intf; scalar_t__* data; } ;
struct cdc_ncm_ctx {TYPE_3__* ether_desc; TYPE_2__* mbim_desc; } ;
struct TYPE_6__ {int wMaxSegmentSize; } ;
struct TYPE_5__ {int wMaxSegmentSize; } ;
struct TYPE_4__ {int cur_altsetting; } ;


 int CDC_NCM_MAX_DATAGRAM_SIZE ;
 scalar_t__ cdc_ncm_comm_intf_is_mbim (int ) ;
 int le16_to_cpu (int ) ;

__attribute__((used)) static u32 cdc_ncm_max_dgram_size(struct usbnet *dev)
{
 struct cdc_ncm_ctx *ctx = (struct cdc_ncm_ctx *)dev->data[0];

 if (cdc_ncm_comm_intf_is_mbim(dev->intf->cur_altsetting) && ctx->mbim_desc)
  return le16_to_cpu(ctx->mbim_desc->wMaxSegmentSize);
 if (ctx->ether_desc)
  return le16_to_cpu(ctx->ether_desc->wMaxSegmentSize);
 return CDC_NCM_MAX_DATAGRAM_SIZE;
}
