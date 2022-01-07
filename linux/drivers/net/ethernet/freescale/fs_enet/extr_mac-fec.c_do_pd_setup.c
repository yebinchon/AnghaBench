
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct TYPE_6__ {int fccp; } ;
struct TYPE_4__ {int fecp; } ;
struct fs_enet_private {TYPE_3__ fcc; TYPE_1__ fec; int interrupt; int dev; } ;


 int EINVAL ;
 int irq_of_parse_and_map (int ,int ) ;
 int of_iomap (int ,int ) ;
 struct platform_device* to_platform_device (int ) ;

__attribute__((used)) static int do_pd_setup(struct fs_enet_private *fep)
{
 struct platform_device *ofdev = to_platform_device(fep->dev);

 fep->interrupt = irq_of_parse_and_map(ofdev->dev.of_node, 0);
 if (!fep->interrupt)
  return -EINVAL;

 fep->fec.fecp = of_iomap(ofdev->dev.of_node, 0);
 if (!fep->fcc.fccp)
  return -EINVAL;

 return 0;
}
