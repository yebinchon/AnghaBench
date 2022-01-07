
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_device {scalar_t__ open; struct local_info* priv; } ;
struct local_info {int eth_dev; } ;


 int netif_device_attach (int ) ;
 int reset_airo_card (int ) ;

__attribute__((used)) static int airo_resume(struct pcmcia_device *link)
{
 struct local_info *local = link->priv;

 if (link->open) {
  reset_airo_card(local->eth_dev);
  netif_device_attach(local->eth_dev);
 }

 return 0;
}
