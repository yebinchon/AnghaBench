
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rvu {int dev; } ;
struct admin_queue {int lock; int res; int inst; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int devm_kfree (int ,struct admin_queue*) ;
 struct admin_queue* devm_kzalloc (int ,int,int ) ;
 int qmem_alloc (int ,int *,int,int) ;
 int rvu_aq_free (struct rvu*,struct admin_queue*) ;
 int spin_lock_init (int *) ;

int rvu_aq_alloc(struct rvu *rvu, struct admin_queue **ad_queue,
   int qsize, int inst_size, int res_size)
{
 struct admin_queue *aq;
 int err;

 *ad_queue = devm_kzalloc(rvu->dev, sizeof(*aq), GFP_KERNEL);
 if (!*ad_queue)
  return -ENOMEM;
 aq = *ad_queue;


 err = qmem_alloc(rvu->dev, &aq->inst, qsize, inst_size);
 if (err) {
  devm_kfree(rvu->dev, aq);
  return err;
 }


 err = qmem_alloc(rvu->dev, &aq->res, qsize, res_size);
 if (err) {
  rvu_aq_free(rvu, aq);
  return err;
 }

 spin_lock_init(&aq->lock);
 return 0;
}
