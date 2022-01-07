
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbpn_dev {int rx_pipe; int usb; struct net_device* dev; } ;
struct urb {scalar_t__ transfer_flags; } ;
struct page {int dummy; } ;
struct net_device {int dev; } ;
typedef int gfp_t ;


 int ENOMEM ;
 int PAGE_SIZE ;
 int __GFP_NOMEMALLOC ;
 struct page* __dev_alloc_page (int) ;
 int dev_dbg (int *,char*,int) ;
 int page_address (struct page*) ;
 int put_page (struct page*) ;
 int rx_complete ;
 scalar_t__ unlikely (int) ;
 int usb_fill_bulk_urb (struct urb*,int ,int ,int ,int ,int ,struct net_device*) ;
 int usb_submit_urb (struct urb*,int) ;

__attribute__((used)) static int rx_submit(struct usbpn_dev *pnd, struct urb *req, gfp_t gfp_flags)
{
 struct net_device *dev = pnd->dev;
 struct page *page;
 int err;

 page = __dev_alloc_page(gfp_flags | __GFP_NOMEMALLOC);
 if (!page)
  return -ENOMEM;

 usb_fill_bulk_urb(req, pnd->usb, pnd->rx_pipe, page_address(page),
    PAGE_SIZE, rx_complete, dev);
 req->transfer_flags = 0;
 err = usb_submit_urb(req, gfp_flags);
 if (unlikely(err)) {
  dev_dbg(&dev->dev, "RX submit error (%d)\n", err);
  put_page(page);
 }
 return err;
}
