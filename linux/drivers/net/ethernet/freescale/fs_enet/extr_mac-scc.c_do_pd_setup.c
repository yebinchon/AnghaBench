
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct TYPE_3__ {void* sccp; void* ep; } ;
struct fs_enet_private {TYPE_1__ scc; int interrupt; int dev; } ;


 int EINVAL ;
 int iounmap (void*) ;
 int irq_of_parse_and_map (int ,int ) ;
 void* of_iomap (int ,int) ;
 struct platform_device* to_platform_device (int ) ;

__attribute__((used)) static int do_pd_setup(struct fs_enet_private *fep)
{
 struct platform_device *ofdev = to_platform_device(fep->dev);

 fep->interrupt = irq_of_parse_and_map(ofdev->dev.of_node, 0);
 if (!fep->interrupt)
  return -EINVAL;

 fep->scc.sccp = of_iomap(ofdev->dev.of_node, 0);
 if (!fep->scc.sccp)
  return -EINVAL;

 fep->scc.ep = of_iomap(ofdev->dev.of_node, 1);
 if (!fep->scc.ep) {
  iounmap(fep->scc.sccp);
  return -EINVAL;
 }

 return 0;
}
