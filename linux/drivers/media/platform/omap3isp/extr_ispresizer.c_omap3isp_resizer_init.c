
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isp_res_device {int lock; int stopping; int wait; } ;
struct isp_device {struct isp_res_device isp_res; } ;


 int atomic_set (int *,int ) ;
 int init_waitqueue_head (int *) ;
 int resizer_init_entities (struct isp_res_device*) ;
 int spin_lock_init (int *) ;

int omap3isp_resizer_init(struct isp_device *isp)
{
 struct isp_res_device *res = &isp->isp_res;

 init_waitqueue_head(&res->wait);
 atomic_set(&res->stopping, 0);
 spin_lock_init(&res->lock);

 return resizer_init_entities(res);
}
