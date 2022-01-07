
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;
struct brcmf_usbreq {int list; } ;
struct brcmf_usbdev_info {int qlock; } ;


 int list_add_tail (int *,struct list_head*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void brcmf_usb_enq(struct brcmf_usbdev_info *devinfo,
     struct list_head *q, struct brcmf_usbreq *req,
     int *counter)
{
 unsigned long flags;
 spin_lock_irqsave(&devinfo->qlock, flags);
 list_add_tail(&req->list, q);
 if (counter)
  (*counter)++;
 spin_unlock_irqrestore(&devinfo->qlock, flags);
}
