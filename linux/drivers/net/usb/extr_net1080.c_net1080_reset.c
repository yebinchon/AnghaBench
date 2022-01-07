
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct usbnet {int net; TYPE_2__* udev; } ;
struct TYPE_4__ {int devpath; TYPE_1__* bus; } ;
struct TYPE_3__ {int bus_name; } ;


 int MK_TTL (int,int ) ;
 int NC_READ_TTL_MS ;
 int REG_STATUS ;
 int REG_TTL ;
 int REG_USBCTL ;
 int STATUS_CONN_OTHER ;
 int STATUS_PORT_A ;
 int TTL_OTHER (int) ;
 int USBCTL_FLUSH_OTHER ;
 int USBCTL_FLUSH_THIS ;
 int link ;
 int nc_dump_status (struct usbnet*,int) ;
 int nc_dump_usbctl (struct usbnet*,int) ;
 int nc_register_read (struct usbnet*,int ,int*) ;
 int nc_register_write (struct usbnet*,int ,int) ;
 int netdev_dbg (int ,char*,int,...) ;
 int netif_info (struct usbnet*,int ,int ,char*,char,char*) ;

__attribute__((used)) static int net1080_reset(struct usbnet *dev)
{
 u16 usbctl, status, ttl;
 u16 vp;
 int retval;



 if ((retval = nc_register_read(dev, REG_STATUS, &vp)) < 0) {
  netdev_dbg(dev->net, "can't read %s-%s status: %d\n",
      dev->udev->bus->bus_name, dev->udev->devpath, retval);
  goto done;
 }
 status = vp;
 nc_dump_status(dev, status);

 if ((retval = nc_register_read(dev, REG_USBCTL, &vp)) < 0) {
  netdev_dbg(dev->net, "can't read USBCTL, %d\n", retval);
  goto done;
 }
 usbctl = vp;
 nc_dump_usbctl(dev, usbctl);

 nc_register_write(dev, REG_USBCTL,
   USBCTL_FLUSH_THIS | USBCTL_FLUSH_OTHER);

 if ((retval = nc_register_read(dev, REG_TTL, &vp)) < 0) {
  netdev_dbg(dev->net, "can't read TTL, %d\n", retval);
  goto done;
 }
 ttl = vp;

 nc_register_write(dev, REG_TTL,
   MK_TTL(NC_READ_TTL_MS, TTL_OTHER(ttl)) );
 netdev_dbg(dev->net, "assigned TTL, %d ms\n", NC_READ_TTL_MS);

 netif_info(dev, link, dev->net, "port %c, peer %sconnected\n",
     (status & STATUS_PORT_A) ? 'A' : 'B',
     (status & STATUS_CONN_OTHER) ? "" : "dis");
 retval = 0;

done:
 return retval;
}
