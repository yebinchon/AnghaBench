
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct usb_interface {int num_altsetting; int * altsetting; } ;
struct TYPE_3__ {int bInterval; int wMaxPacketSize; } ;
struct usb_host_endpoint {TYPE_1__ desc; } ;
struct gspca_dev {TYPE_2__* dev; scalar_t__ audio; int xfer_ep; } ;
struct ep_tb_s {int bandwidth; int alt; } ;
struct TYPE_4__ {scalar_t__ speed; } ;


 int D_STREAM ;
 int MAX_ALT ;
 int USB_ENDPOINT_XFER_ISOC ;
 scalar_t__ USB_SPEED_FULL ;
 scalar_t__ USB_SPEED_HIGH ;
 scalar_t__ USB_SPEED_SUPER ;
 struct usb_host_endpoint* alt_xfer (int *,int ,int ) ;
 int gspca_dbg (struct gspca_dev*,int ,char*,...) ;
 int le16_to_cpu (int ) ;
 int pr_err (char*,int) ;
 int which_bandwidth (struct gspca_dev*) ;

__attribute__((used)) static int build_isoc_ep_tb(struct gspca_dev *gspca_dev,
   struct usb_interface *intf,
   struct ep_tb_s *ep_tb)
{
 struct usb_host_endpoint *ep;
 int i, j, nbalt, psize, found;
 u32 bandwidth, last_bw;

 nbalt = intf->num_altsetting;
 if (nbalt > MAX_ALT)
  nbalt = MAX_ALT;


 i = 0;
 last_bw = 0;
 for (;;) {
  ep_tb->bandwidth = 2000 * 2000 * 120;
  found = 0;
  for (j = 0; j < nbalt; j++) {
   ep = alt_xfer(&intf->altsetting[j],
          USB_ENDPOINT_XFER_ISOC,
          gspca_dev->xfer_ep);
   if (ep == ((void*)0))
    continue;
   if (ep->desc.bInterval == 0) {
    pr_err("alt %d iso endp with 0 interval\n", j);
    continue;
   }
   psize = le16_to_cpu(ep->desc.wMaxPacketSize);
   psize = (psize & 0x07ff) * (1 + ((psize >> 11) & 3));
   bandwidth = psize * 1000;
   if (gspca_dev->dev->speed == USB_SPEED_HIGH
    || gspca_dev->dev->speed >= USB_SPEED_SUPER)
    bandwidth *= 8;
   bandwidth /= 1 << (ep->desc.bInterval - 1);
   if (bandwidth <= last_bw)
    continue;
   if (bandwidth < ep_tb->bandwidth) {
    ep_tb->bandwidth = bandwidth;
    ep_tb->alt = j;
    found = 1;
   }
  }
  if (!found)
   break;
  gspca_dbg(gspca_dev, D_STREAM, "alt %d bandwidth %d\n",
     ep_tb->alt, ep_tb->bandwidth);
  last_bw = ep_tb->bandwidth;
  i++;
  ep_tb++;
 }
 if (gspca_dev->audio &&
   gspca_dev->dev->speed == USB_SPEED_FULL &&
   last_bw >= 1000000 &&
   i > 1) {
  gspca_dbg(gspca_dev, D_STREAM, "dev has usb audio, skipping highest alt\n");
  i--;
  ep_tb--;
 }


 bandwidth = which_bandwidth(gspca_dev);
 ep_tb--;
 while (i > 1) {
  ep_tb--;
  if (ep_tb->bandwidth < bandwidth)
   break;
  i--;
 }
 return i;
}
