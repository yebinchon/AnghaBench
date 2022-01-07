
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mtk_mdp_dev {int * comp; TYPE_1__* pdev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 int ARRAY_SIZE (int *) ;
 int mtk_mdp_comp_clock_on (struct device*,int ) ;

__attribute__((used)) static void mtk_mdp_clock_on(struct mtk_mdp_dev *mdp)
{
 struct device *dev = &mdp->pdev->dev;
 int i;

 for (i = 0; i < ARRAY_SIZE(mdp->comp); i++)
  mtk_mdp_comp_clock_on(dev, mdp->comp[i]);
}
