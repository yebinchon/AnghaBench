
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_device {int dev; } ;


 int dev_dbg (int *,char*) ;
 int pcmcia_disable_device (struct pcmcia_device*) ;

__attribute__((used)) static void nmclan_release(struct pcmcia_device *link)
{
 dev_dbg(&link->dev, "nmclan_release\n");
 pcmcia_disable_device(link);
}
