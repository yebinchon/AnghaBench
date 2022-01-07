
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_mdp_dev {int wdt_work; int wdt_wq; } ;


 int queue_work (int ,int *) ;

__attribute__((used)) static void mtk_mdp_reset_handler(void *priv)
{
 struct mtk_mdp_dev *mdp = priv;

 queue_work(mdp->wdt_wq, &mdp->wdt_work);
}
