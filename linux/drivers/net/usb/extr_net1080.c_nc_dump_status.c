
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct usbnet {TYPE_2__* udev; int net; } ;
struct TYPE_4__ {int devpath; TYPE_1__* bus; } ;
struct TYPE_3__ {int bus_name; } ;


 int STATUS_CONN_OTHER ;
 int STATUS_CONN_THIS ;
 int STATUS_MAILBOX_OTHER ;
 int STATUS_MAILBOX_THIS ;
 int STATUS_PACKETS_OTHER (int) ;
 int STATUS_PACKETS_THIS (int) ;
 int STATUS_PORT_A ;
 int STATUS_SUSPEND_OTHER ;
 int STATUS_SUSPEND_THIS ;
 int STATUS_UNSPEC_MASK ;
 int link ;
 int netif_dbg (struct usbnet*,int ,int ,char*,int ,int ,int,char,int ,char*,char*,char*,int ,char*,char*,char*,int) ;

__attribute__((used)) static inline void nc_dump_status(struct usbnet *dev, u16 status)
{
 netif_dbg(dev, link, dev->net,
    "net1080 %s-%s status 0x%x: this (%c) PKT=%d%s%s%s; other PKT=%d%s%s%s; unspec 0x%x\n",
    dev->udev->bus->bus_name, dev->udev->devpath,
    status,




    (status & STATUS_PORT_A) ? 'A' : 'B',
    STATUS_PACKETS_THIS(status),
    (status & STATUS_CONN_THIS) ? " CON" : "",
    (status & STATUS_SUSPEND_THIS) ? " SUS" : "",
    (status & STATUS_MAILBOX_THIS) ? " MBOX" : "",

    STATUS_PACKETS_OTHER(status),
    (status & STATUS_CONN_OTHER) ? " CON" : "",
    (status & STATUS_SUSPEND_OTHER) ? " SUS" : "",
    (status & STATUS_MAILBOX_OTHER) ? " MBOX" : "",

    status & STATUS_UNSPEC_MASK);
}
