
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rvu {int dev; } ;
struct admin_queue {int res; int inst; } ;


 int devm_kfree (int ,struct admin_queue*) ;
 int qmem_free (int ,int ) ;

void rvu_aq_free(struct rvu *rvu, struct admin_queue *aq)
{
 if (!aq)
  return;

 qmem_free(rvu->dev, aq->inst);
 qmem_free(rvu->dev, aq->res);
 devm_kfree(rvu->dev, aq);
}
