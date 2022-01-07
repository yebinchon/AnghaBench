
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbnet {int net; } ;
typedef int __le32 ;


 int __le32_to_cpu (int ) ;
 int netif_info (struct usbnet*,int ,int ,char*,int,int) ;
 int timer ;

__attribute__((used)) static void dumpspeed(struct usbnet *dev, __le32 *speeds)
{
 netif_info(dev, timer, dev->net,
     "link speeds: %u kbps up, %u kbps down\n",
     __le32_to_cpu(speeds[0]) / 1000,
     __le32_to_cpu(speeds[1]) / 1000);
}
