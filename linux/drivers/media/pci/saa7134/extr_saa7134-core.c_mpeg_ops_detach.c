
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct saa7134_mpeg_ops {int (* fini ) (struct saa7134_dev*) ;} ;
struct saa7134_dev {struct saa7134_mpeg_ops* mops; } ;


 int stub1 (struct saa7134_dev*) ;

__attribute__((used)) static void mpeg_ops_detach(struct saa7134_mpeg_ops *ops,
       struct saa7134_dev *dev)
{
 if (((void*)0) == dev->mops)
  return;
 if (dev->mops != ops)
  return;
 dev->mops->fini(dev);
 dev->mops = ((void*)0);
}
