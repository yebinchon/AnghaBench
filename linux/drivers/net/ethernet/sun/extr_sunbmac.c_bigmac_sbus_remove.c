
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct device* parent; } ;
struct platform_device {TYPE_1__ dev; int * resource; } ;
struct net_device {int dummy; } ;
struct device {int dummy; } ;
struct bigmac {int bblock_dvma; int bmac_block; int tregs; int bregs; int creg; int gregs; struct net_device* dev; } ;


 int BMAC_REG_SIZE ;
 int CREG_REG_SIZE ;
 int GLOB_REG_SIZE ;
 int PAGE_SIZE ;
 int TCVR_REG_SIZE ;
 int dma_free_coherent (TYPE_1__*,int ,int ,int ) ;
 int free_netdev (struct net_device*) ;
 int of_iounmap (int *,int ,int ) ;
 struct bigmac* platform_get_drvdata (struct platform_device*) ;
 struct platform_device* to_platform_device (struct device*) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static int bigmac_sbus_remove(struct platform_device *op)
{
 struct bigmac *bp = platform_get_drvdata(op);
 struct device *parent = op->dev.parent;
 struct net_device *net_dev = bp->dev;
 struct platform_device *qec_op;

 qec_op = to_platform_device(parent);

 unregister_netdev(net_dev);

 of_iounmap(&qec_op->resource[0], bp->gregs, GLOB_REG_SIZE);
 of_iounmap(&op->resource[0], bp->creg, CREG_REG_SIZE);
 of_iounmap(&op->resource[1], bp->bregs, BMAC_REG_SIZE);
 of_iounmap(&op->resource[2], bp->tregs, TCVR_REG_SIZE);
 dma_free_coherent(&op->dev,
     PAGE_SIZE,
     bp->bmac_block,
     bp->bblock_dvma);

 free_netdev(net_dev);

 return 0;
}
