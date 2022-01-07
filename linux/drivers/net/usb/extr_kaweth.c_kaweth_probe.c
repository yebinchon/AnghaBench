
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct device {int dummy; } ;
struct usb_interface {struct device dev; } ;
struct usb_device_id {int dummy; } ;
struct TYPE_3__ {int bcdDevice; scalar_t__ bDescriptorType; scalar_t__ bLength; int idProduct; int idVendor; } ;
struct usb_device {TYPE_1__ descriptor; int devnum; } ;
struct net_device {int mtu; int name; int * ethtool_ops; int watchdog_timeo; int * netdev_ops; int dev_addr; int broadcast; } ;
struct TYPE_4__ {int statistics_mask; int max_multicast_filters; int hw_addr; int segment_size; } ;
struct kaweth_device {void* tx_urb; void* rx_urb; void* irq_urb; int intbufferhandle; void* intbuffer; struct usb_device* dev; int rxbufferhandle; void* rx_buf; struct net_device* net; int lowmem_work; TYPE_2__ configuration; int * firmware_buf; int term_wait; int device_lock; struct usb_interface* intf; } ;
typedef int eth_addr_t ;
typedef int bcast_addr ;
typedef int __u8 ;


 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int INTBUFFERSIZE ;
 int KAWETH_BUF_SIZE ;
 int KAWETH_PACKET_FILTER_BROADCAST ;
 int KAWETH_PACKET_FILTER_DIRECTED ;
 int KAWETH_PACKET_FILTER_MULTICAST ;
 int KAWETH_SOFS_TO_WAIT ;
 int KAWETH_TX_TIMEOUT ;
 int SET_NETDEV_DEV (struct net_device*,struct device*) ;
 scalar_t__ __get_free_page (int ) ;
 struct net_device* alloc_etherdev (int) ;
 int dev_dbg (struct device*,char*,...) ;
 int dev_err (struct device*,char*,...) ;
 int dev_info (struct device*,char*,...) ;
 int free_netdev (struct net_device*) ;
 int free_page (unsigned long) ;
 int init_waitqueue_head (int *) ;
 struct usb_device* interface_to_usbdev (struct usb_interface*) ;
 int kaweth_download_firmware (struct kaweth_device*,char*,int,int) ;
 int kaweth_netdev_ops ;
 int kaweth_read_configuration (struct kaweth_device*) ;
 int kaweth_reset (struct kaweth_device*) ;
 int kaweth_resubmit_tl ;
 int kaweth_set_receive_filter (struct kaweth_device*,int) ;
 scalar_t__ kaweth_set_sofs_wait (struct kaweth_device*,int ) ;
 scalar_t__ kaweth_set_urb_size (struct kaweth_device*,int ) ;
 int kaweth_trigger_firmware (struct kaweth_device*,int) ;
 int le16_to_cpu (int ) ;
 int memcmp (int*,int const*,int) ;
 int memcpy (int ,int const*,int) ;
 struct kaweth_device* netdev_priv (struct net_device*) ;
 int ops ;
 scalar_t__ register_netdev (struct net_device*) ;
 int spin_lock_init (int *) ;
 void* usb_alloc_coherent (struct usb_device*,int ,int ,int *) ;
 void* usb_alloc_urb (int ,int ) ;
 int usb_free_coherent (struct usb_device*,int ,void*,int ) ;
 int usb_free_urb (void*) ;
 int usb_set_intfdata (struct usb_interface*,struct kaweth_device*) ;

__attribute__((used)) static int kaweth_probe(
  struct usb_interface *intf,
  const struct usb_device_id *id
 )
{
 struct device *dev = &intf->dev;
 struct usb_device *udev = interface_to_usbdev(intf);
 struct kaweth_device *kaweth;
 struct net_device *netdev;
 const eth_addr_t bcast_addr = { 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF };
 int result = 0;
 int rv = -EIO;

 dev_dbg(dev,
  "Kawasaki Device Probe (Device number:%d): 0x%4.4x:0x%4.4x:0x%4.4x\n",
  udev->devnum, le16_to_cpu(udev->descriptor.idVendor),
  le16_to_cpu(udev->descriptor.idProduct),
  le16_to_cpu(udev->descriptor.bcdDevice));

 dev_dbg(dev, "Device at %p\n", udev);

 dev_dbg(dev, "Descriptor length: %x type: %x\n",
  (int)udev->descriptor.bLength,
  (int)udev->descriptor.bDescriptorType);

 netdev = alloc_etherdev(sizeof(*kaweth));
 if (!netdev)
  return -ENOMEM;

 kaweth = netdev_priv(netdev);
 kaweth->dev = udev;
 kaweth->net = netdev;
 kaweth->intf = intf;

 spin_lock_init(&kaweth->device_lock);
 init_waitqueue_head(&kaweth->term_wait);

 dev_dbg(dev, "Resetting.\n");

 kaweth_reset(kaweth);






 if (le16_to_cpu(udev->descriptor.bcdDevice) >> 8) {
  dev_info(dev, "Firmware present in device.\n");
 } else {

  dev_info(dev, "Downloading firmware...\n");
  kaweth->firmware_buf = (__u8 *)__get_free_page(GFP_KERNEL);
  if (!kaweth->firmware_buf) {
   rv = -ENOMEM;
   goto err_free_netdev;
  }
  if ((result = kaweth_download_firmware(kaweth,
            "kaweth/new_code.bin",
            100,
            2)) < 0) {
   dev_err(dev, "Error downloading firmware (%d)\n",
    result);
   goto err_fw;
  }

  if ((result = kaweth_download_firmware(kaweth,
            "kaweth/new_code_fix.bin",
            100,
            3)) < 0) {
   dev_err(dev, "Error downloading firmware fix (%d)\n",
    result);
   goto err_fw;
  }

  if ((result = kaweth_download_firmware(kaweth,
            "kaweth/trigger_code.bin",
            126,
            2)) < 0) {
   dev_err(dev, "Error downloading trigger code (%d)\n",
    result);
   goto err_fw;

  }

  if ((result = kaweth_download_firmware(kaweth,
            "kaweth/trigger_code_fix.bin",
            126,
            3)) < 0) {
   dev_err(dev, "Error downloading trigger code fix (%d)\n", result);
   goto err_fw;
  }


  if ((result = kaweth_trigger_firmware(kaweth, 126)) < 0) {
   dev_err(dev, "Error triggering firmware (%d)\n", result);
   goto err_fw;
  }


  dev_info(dev, "Firmware loaded.  I'll be back...\n");
err_fw:
  free_page((unsigned long)kaweth->firmware_buf);
  free_netdev(netdev);
  return -EIO;
 }

 result = kaweth_read_configuration(kaweth);

 if(result < 0) {
  dev_err(dev, "Error reading configuration (%d), no net device created\n", result);
  goto err_free_netdev;
 }

 dev_info(dev, "Statistics collection: %x\n", kaweth->configuration.statistics_mask);
 dev_info(dev, "Multicast filter limit: %x\n", kaweth->configuration.max_multicast_filters & ((1 << 15) - 1));
 dev_info(dev, "MTU: %d\n", le16_to_cpu(kaweth->configuration.segment_size));
 dev_info(dev, "Read MAC address %pM\n", kaweth->configuration.hw_addr);

 if(!memcmp(&kaweth->configuration.hw_addr,
                   &bcast_addr,
     sizeof(bcast_addr))) {
  dev_err(dev, "Firmware not functioning properly, no net device created\n");
  goto err_free_netdev;
 }

 if(kaweth_set_urb_size(kaweth, KAWETH_BUF_SIZE) < 0) {
  dev_dbg(dev, "Error setting URB size\n");
  goto err_free_netdev;
 }

 if(kaweth_set_sofs_wait(kaweth, KAWETH_SOFS_TO_WAIT) < 0) {
  dev_err(dev, "Error setting SOFS wait\n");
  goto err_free_netdev;
 }

 result = kaweth_set_receive_filter(kaweth,
                                           KAWETH_PACKET_FILTER_DIRECTED |
                                           KAWETH_PACKET_FILTER_BROADCAST |
                                           KAWETH_PACKET_FILTER_MULTICAST);

 if(result < 0) {
  dev_err(dev, "Error setting receive filter\n");
  goto err_free_netdev;
 }

 dev_dbg(dev, "Initializing net device.\n");

 kaweth->tx_urb = usb_alloc_urb(0, GFP_KERNEL);
 if (!kaweth->tx_urb)
  goto err_free_netdev;
 kaweth->rx_urb = usb_alloc_urb(0, GFP_KERNEL);
 if (!kaweth->rx_urb)
  goto err_only_tx;
 kaweth->irq_urb = usb_alloc_urb(0, GFP_KERNEL);
 if (!kaweth->irq_urb)
  goto err_tx_and_rx;

 kaweth->intbuffer = usb_alloc_coherent( kaweth->dev,
      INTBUFFERSIZE,
      GFP_KERNEL,
      &kaweth->intbufferhandle);
 if (!kaweth->intbuffer)
  goto err_tx_and_rx_and_irq;
 kaweth->rx_buf = usb_alloc_coherent( kaweth->dev,
      KAWETH_BUF_SIZE,
      GFP_KERNEL,
      &kaweth->rxbufferhandle);
 if (!kaweth->rx_buf)
  goto err_all_but_rxbuf;

 memcpy(netdev->broadcast, &bcast_addr, sizeof(bcast_addr));
 memcpy(netdev->dev_addr, &kaweth->configuration.hw_addr,
               sizeof(kaweth->configuration.hw_addr));

 netdev->netdev_ops = &kaweth_netdev_ops;
 netdev->watchdog_timeo = KAWETH_TX_TIMEOUT;
 netdev->mtu = le16_to_cpu(kaweth->configuration.segment_size);
 netdev->ethtool_ops = &ops;


 INIT_DELAYED_WORK(&kaweth->lowmem_work, kaweth_resubmit_tl);
 usb_set_intfdata(intf, kaweth);

 SET_NETDEV_DEV(netdev, dev);
 if (register_netdev(netdev) != 0) {
  dev_err(dev, "Error registering netdev.\n");
  goto err_intfdata;
 }

 dev_info(dev, "kaweth interface created at %s\n",
   kaweth->net->name);

 return 0;

err_intfdata:
 usb_set_intfdata(intf, ((void*)0));
 usb_free_coherent(kaweth->dev, KAWETH_BUF_SIZE, (void *)kaweth->rx_buf, kaweth->rxbufferhandle);
err_all_but_rxbuf:
 usb_free_coherent(kaweth->dev, INTBUFFERSIZE, (void *)kaweth->intbuffer, kaweth->intbufferhandle);
err_tx_and_rx_and_irq:
 usb_free_urb(kaweth->irq_urb);
err_tx_and_rx:
 usb_free_urb(kaweth->rx_urb);
err_only_tx:
 usb_free_urb(kaweth->tx_urb);
err_free_netdev:
 free_netdev(netdev);

 return rv;
}
