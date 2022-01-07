
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_device {struct local_info* priv; } ;
struct local_info {int eth_dev; } ;


 int netif_device_detach (int ) ;

__attribute__((used)) static int airo_suspend(struct pcmcia_device *link)
{
 struct local_info *local = link->priv;

 netif_device_detach(local->eth_dev);

 return 0;
}
