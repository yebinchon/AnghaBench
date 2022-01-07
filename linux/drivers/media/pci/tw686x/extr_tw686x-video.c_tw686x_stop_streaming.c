
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_queue {int dummy; } ;
struct tw686x_video_channel {int qlock; int ch; struct tw686x_dev* dev; } ;
struct tw686x_dev {int lock; struct pci_dev* pci_dev; } ;
struct pci_dev {int dummy; } ;


 int VB2_BUF_STATE_ERROR ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tw686x_clear_queue (struct tw686x_video_channel*,int ) ;
 int tw686x_disable_channel (struct tw686x_dev*,int ) ;
 struct tw686x_video_channel* vb2_get_drv_priv (struct vb2_queue*) ;

__attribute__((used)) static void tw686x_stop_streaming(struct vb2_queue *vq)
{
 struct tw686x_video_channel *vc = vb2_get_drv_priv(vq);
 struct tw686x_dev *dev = vc->dev;
 struct pci_dev *pci_dev;
 unsigned long flags;


 spin_lock_irqsave(&dev->lock, flags);
 pci_dev = dev->pci_dev;
 spin_unlock_irqrestore(&dev->lock, flags);
 if (pci_dev)
  tw686x_disable_channel(dev, vc->ch);

 spin_lock_irqsave(&vc->qlock, flags);
 tw686x_clear_queue(vc, VB2_BUF_STATE_ERROR);
 spin_unlock_irqrestore(&vc->qlock, flags);
}
