
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rndis_request {int list_ent; } ;
struct rndis_device {int request_lock; } ;


 int kfree (struct rndis_request*) ;
 int list_del (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void put_rndis_request(struct rndis_device *dev,
       struct rndis_request *req)
{
 unsigned long flags;

 spin_lock_irqsave(&dev->request_lock, flags);
 list_del(&req->list_ent);
 spin_unlock_irqrestore(&dev->request_lock, flags);

 kfree(req);
}
