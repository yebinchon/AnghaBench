
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct pcmcia_device {struct platform_device* priv; } ;


 int pcmcia_disable_device (struct pcmcia_device*) ;
 int platform_device_unregister (struct platform_device*) ;

__attribute__((used)) static void softingcs_remove(struct pcmcia_device *pcmcia)
{
 struct platform_device *pdev = pcmcia->priv;


 platform_device_unregister(pdev);

 pcmcia_disable_device(pcmcia);
}
