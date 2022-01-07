
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct usbnet {TYPE_4__* net; TYPE_3__* status; TYPE_1__* driver_info; int data; } ;
struct usb_interface {int cur_altsetting; } ;
struct usb_driver {int dummy; } ;
struct cdc_ncm_ctx {TYPE_2__* mbim_desc; int control; } ;
struct cdc_mbim_state {struct usb_driver* subdriver; struct cdc_ncm_ctx* ctx; } ;
struct TYPE_8__ {int features; int * netdev_ops; int flags; } ;
struct TYPE_7__ {int desc; } ;
struct TYPE_6__ {int wMaxControlMessage; } ;
struct TYPE_5__ {int data; } ;


 scalar_t__ CDC_NCM_COMM_ALTSETTING_MBIM ;
 int CDC_NCM_DATA_ALTSETTING_MBIM ;
 int ENODEV ;
 struct usb_driver* ERR_PTR (int) ;
 int IFF_NOARP ;
 scalar_t__ IS_ERR (struct usb_driver*) ;
 int NETIF_F_HW_VLAN_CTAG_FILTER ;
 int NETIF_F_HW_VLAN_CTAG_TX ;
 int PTR_ERR (struct usb_driver*) ;
 int cdc_mbim_netdev_ops ;
 int cdc_mbim_set_ctrlalt (struct usbnet*,struct usb_interface*,scalar_t__) ;
 int cdc_mbim_wdm_manage_power ;
 int cdc_ncm_bind_common (struct usbnet*,struct usb_interface*,int,int ) ;
 int cdc_ncm_comm_intf_is_mbim (int ) ;
 scalar_t__ cdc_ncm_select_altsetting (struct usb_interface*) ;
 int cdc_ncm_unbind (struct usbnet*,struct usb_interface*) ;
 int le16_to_cpu (int ) ;
 struct usb_driver* usb_cdc_wdm_register (int ,int *,int ,int ) ;

__attribute__((used)) static int cdc_mbim_bind(struct usbnet *dev, struct usb_interface *intf)
{
 struct cdc_ncm_ctx *ctx;
 struct usb_driver *subdriver = ERR_PTR(-ENODEV);
 int ret = -ENODEV;
 u8 data_altsetting = 1;
 struct cdc_mbim_state *info = (void *)&dev->data;


 if (cdc_ncm_select_altsetting(intf) == CDC_NCM_COMM_ALTSETTING_MBIM) {
  data_altsetting = CDC_NCM_DATA_ALTSETTING_MBIM;
  ret = cdc_mbim_set_ctrlalt(dev, intf, CDC_NCM_COMM_ALTSETTING_MBIM);
  if (ret)
   goto err;
  ret = -ENODEV;
 }


 if (!cdc_ncm_comm_intf_is_mbim(intf->cur_altsetting))
  goto err;

 ret = cdc_ncm_bind_common(dev, intf, data_altsetting, dev->driver_info->data);
 if (ret)
  goto err;

 ctx = info->ctx;


 if (ctx->mbim_desc && dev->status)
  subdriver = usb_cdc_wdm_register(ctx->control,
       &dev->status->desc,
       le16_to_cpu(ctx->mbim_desc->wMaxControlMessage),
       cdc_mbim_wdm_manage_power);
 if (IS_ERR(subdriver)) {
  ret = PTR_ERR(subdriver);
  cdc_ncm_unbind(dev, intf);
  goto err;
 }


 dev->status = ((void*)0);
 info->subdriver = subdriver;


 dev->net->flags |= IFF_NOARP;


 dev->net->features |= NETIF_F_HW_VLAN_CTAG_TX | NETIF_F_HW_VLAN_CTAG_FILTER;


 dev->net->netdev_ops = &cdc_mbim_netdev_ops;
err:
 return ret;
}
