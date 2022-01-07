
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usbnet {int net; } ;
struct sierra_net_data {int link_up; } ;
struct TYPE_3__ {int byte; } ;
struct TYPE_4__ {int word; } ;
struct hip_hdr {int hdrlen; TYPE_1__ msgspecific; TYPE_2__ payload_len; } ;


 int netdev_err (int ,char*) ;
 struct sierra_net_data* sierra_net_get_private (struct usbnet*) ;
 int sierra_net_parse_lsi (struct usbnet*,char*,int ) ;
 int sierra_net_set_ctx_index (struct sierra_net_data*,int ) ;
 int usbnet_link_change (struct usbnet*,int,int ) ;

__attribute__((used)) static void sierra_net_handle_lsi(struct usbnet *dev, char *data,
  struct hip_hdr *hh)
{
 struct sierra_net_data *priv = sierra_net_get_private(dev);
 int link_up;

 link_up = sierra_net_parse_lsi(dev, data + hh->hdrlen,
     hh->payload_len.word);
 if (link_up < 0) {
  netdev_err(dev->net, "Invalid LSI\n");
  return;
 }
 if (link_up) {
  sierra_net_set_ctx_index(priv, hh->msgspecific.byte);
  priv->link_up = 1;
 } else {
  priv->link_up = 0;
 }
 usbnet_link_change(dev, link_up, 0);
}
