
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct saa7134_mpeg_ops {scalar_t__ type; int (* init ) (struct saa7134_dev*) ;} ;
struct saa7134_dev {size_t board; struct saa7134_mpeg_ops* mops; } ;
struct TYPE_2__ {scalar_t__ mpeg; } ;


 TYPE_1__* saa7134_boards ;
 int stub1 (struct saa7134_dev*) ;

__attribute__((used)) static void mpeg_ops_attach(struct saa7134_mpeg_ops *ops,
       struct saa7134_dev *dev)
{
 int err;

 if (((void*)0) != dev->mops)
  return;
 if (saa7134_boards[dev->board].mpeg != ops->type)
  return;
 err = ops->init(dev);
 if (0 != err)
  return;
 dev->mops = ops;
}
