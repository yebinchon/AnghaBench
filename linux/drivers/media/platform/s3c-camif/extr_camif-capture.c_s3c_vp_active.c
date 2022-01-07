
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct camif_vp {int state; struct camif_dev* camif; } ;
struct camif_dev {int slock; } ;


 int ST_VP_PENDING ;
 int ST_VP_RUNNING ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static bool s3c_vp_active(struct camif_vp *vp)
{
 struct camif_dev *camif = vp->camif;
 unsigned long flags;
 bool ret;

 spin_lock_irqsave(&camif->slock, flags);
 ret = (vp->state & ST_VP_RUNNING) || (vp->state & ST_VP_PENDING);
 spin_unlock_irqrestore(&camif->slock, flags);

 return ret;
}
