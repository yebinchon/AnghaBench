
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_device {int dummy; } ;


 int pcan_free (struct pcmcia_device*) ;
 int pcmcia_disable_device (struct pcmcia_device*) ;

__attribute__((used)) static void pcan_remove(struct pcmcia_device *pdev)
{
 pcan_free(pdev);
 pcmcia_disable_device(pdev);
}
