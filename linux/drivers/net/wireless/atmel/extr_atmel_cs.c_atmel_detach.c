
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_device {int priv; int dev; } ;


 int atmel_release (struct pcmcia_device*) ;
 int dev_dbg (int *,char*) ;
 int kfree (int ) ;

__attribute__((used)) static void atmel_detach(struct pcmcia_device *link)
{
 dev_dbg(&link->dev, "atmel_detach\n");

 atmel_release(link);

 kfree(link->priv);
}
