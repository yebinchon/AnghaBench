
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct pcmcia_device {int dummy; } ;


 int dev_dbg (TYPE_1__*,char*,int) ;
 int pcmcia_write_config_byte (struct pcmcia_device*,int ,int) ;
 struct pcmcia_device* to_pcmcia_dev (int ) ;

__attribute__((used)) static int softingcs_enable_irq(struct platform_device *pdev, int v)
{
 struct pcmcia_device *pcmcia = to_pcmcia_dev(pdev->dev.parent);

 dev_dbg(&pdev->dev, "pcmcia config [0] %02x\n", v ? 0x60 : 0);
 return pcmcia_write_config_byte(pcmcia, 0, v ? 0x60 : 0);
}
