
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brcmf_usbdev {int nrxq; int ntxq; int bus_mtu; int state; struct brcmf_usbdev_info* devinfo; } ;
struct brcmf_usbdev_info {int rx_low_watermark; int tx_low_watermark; int tx_high_watermark; int tx_flowblock; int tx_freecount; struct brcmf_usbdev bus_pub; void* bulk_urb; void* ctl_urb; void* tx_reqs; int tx_freeq; void* rx_reqs; int rx_freeq; int tx_postq; int rx_postq; int tx_flowblock_lock; int qlock; int ioctl_resp_wait; } ;


 int BRCMFMAC_USB_STATE_DOWN ;
 int BRCMF_USB_MAX_PKT_SIZE ;
 int GFP_ATOMIC ;
 int INIT_LIST_HEAD (int *) ;
 int USB ;
 int brcmf_dbg (int ,char*) ;
 int brcmf_err (char*) ;
 int brcmf_usb_detach (struct brcmf_usbdev_info*) ;
 void* brcmf_usbdev_qinit (int *,int) ;
 int init_waitqueue_head (int *) ;
 int spin_lock_init (int *) ;
 void* usb_alloc_urb (int ,int ) ;

__attribute__((used)) static
struct brcmf_usbdev *brcmf_usb_attach(struct brcmf_usbdev_info *devinfo,
          int nrxq, int ntxq)
{
 brcmf_dbg(USB, "Enter\n");

 devinfo->bus_pub.nrxq = nrxq;
 devinfo->rx_low_watermark = nrxq / 2;
 devinfo->bus_pub.devinfo = devinfo;
 devinfo->bus_pub.ntxq = ntxq;
 devinfo->bus_pub.state = BRCMFMAC_USB_STATE_DOWN;


 devinfo->tx_low_watermark = ntxq / 4;
 devinfo->tx_high_watermark = devinfo->tx_low_watermark * 3;
 devinfo->bus_pub.bus_mtu = BRCMF_USB_MAX_PKT_SIZE;


 init_waitqueue_head(&devinfo->ioctl_resp_wait);


 spin_lock_init(&devinfo->qlock);
 spin_lock_init(&devinfo->tx_flowblock_lock);

 INIT_LIST_HEAD(&devinfo->rx_freeq);
 INIT_LIST_HEAD(&devinfo->rx_postq);

 INIT_LIST_HEAD(&devinfo->tx_freeq);
 INIT_LIST_HEAD(&devinfo->tx_postq);

 devinfo->tx_flowblock = 0;

 devinfo->rx_reqs = brcmf_usbdev_qinit(&devinfo->rx_freeq, nrxq);
 if (!devinfo->rx_reqs)
  goto error;

 devinfo->tx_reqs = brcmf_usbdev_qinit(&devinfo->tx_freeq, ntxq);
 if (!devinfo->tx_reqs)
  goto error;
 devinfo->tx_freecount = ntxq;

 devinfo->ctl_urb = usb_alloc_urb(0, GFP_ATOMIC);
 if (!devinfo->ctl_urb)
  goto error;
 devinfo->bulk_urb = usb_alloc_urb(0, GFP_ATOMIC);
 if (!devinfo->bulk_urb)
  goto error;

 return &devinfo->bus_pub;

error:
 brcmf_err("failed!\n");
 brcmf_usb_detach(devinfo);
 return ((void*)0);
}
