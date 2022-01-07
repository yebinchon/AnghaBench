
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sunqe_buffers {int dummy; } ;
struct sunqe {int buffers_dvma; int buffers; int qblock_dvma; int qe_block; int mregs; int qcregs; struct net_device* dev; } ;
struct platform_device {int dev; int * resource; } ;
struct net_device {int dummy; } ;


 int CREG_REG_SIZE ;
 int MREGS_REG_SIZE ;
 int PAGE_SIZE ;
 int dma_free_coherent (int *,int,int ,int ) ;
 int free_netdev (struct net_device*) ;
 int of_iounmap (int *,int ,int ) ;
 struct sunqe* platform_get_drvdata (struct platform_device*) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static int qec_sbus_remove(struct platform_device *op)
{
 struct sunqe *qp = platform_get_drvdata(op);
 struct net_device *net_dev = qp->dev;

 unregister_netdev(net_dev);

 of_iounmap(&op->resource[0], qp->qcregs, CREG_REG_SIZE);
 of_iounmap(&op->resource[1], qp->mregs, MREGS_REG_SIZE);
 dma_free_coherent(&op->dev, PAGE_SIZE,
     qp->qe_block, qp->qblock_dvma);
 dma_free_coherent(&op->dev, sizeof(struct sunqe_buffers),
     qp->buffers, qp->buffers_dvma);

 free_netdev(net_dev);

 return 0;
}
