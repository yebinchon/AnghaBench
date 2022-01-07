
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_queue {int dummy; } ;
struct sta2x11_vip {int active; int slock; } ;


 int DVP_ITM ;
 int DVP_IT_VSB ;
 int DVP_IT_VST ;
 int reg_write (struct sta2x11_vip*,int ,int) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int start_dma (struct sta2x11_vip*,int ) ;
 struct sta2x11_vip* vb2_get_drv_priv (struct vb2_queue*) ;

__attribute__((used)) static int start_streaming(struct vb2_queue *vq, unsigned int count)
{
 struct sta2x11_vip *vip = vb2_get_drv_priv(vq);

 spin_lock_irq(&vip->slock);

 reg_write(vip, DVP_ITM, DVP_IT_VSB | DVP_IT_VST);
 spin_unlock_irq(&vip->slock);

 if (count)
  start_dma(vip, vip->active);

 return 0;
}
