
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_device {scalar_t__ priv; int dev; } ;
struct local_info {int * eth_dev; } ;


 int airo_release (struct pcmcia_device*) ;
 int dev_dbg (int *,char*) ;
 int kfree (scalar_t__) ;
 int stop_airo_card (int *,int ) ;

__attribute__((used)) static void airo_detach(struct pcmcia_device *link)
{
 dev_dbg(&link->dev, "airo_detach\n");

 airo_release(link);

 if (((struct local_info *)link->priv)->eth_dev) {
  stop_airo_card(((struct local_info *)link->priv)->eth_dev,
          0);
 }
 ((struct local_info *)link->priv)->eth_dev = ((void*)0);

 kfree(link->priv);
}
