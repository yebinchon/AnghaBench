
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_device {struct local_info* priv; } ;
struct local_info {int eth_dev; } ;


 int atmel_open (int ) ;
 int netif_device_attach (int ) ;

__attribute__((used)) static int atmel_resume(struct pcmcia_device *link)
{
 struct local_info *local = link->priv;

 atmel_open(local->eth_dev);
 netif_device_attach(local->eth_dev);

 return 0;
}
