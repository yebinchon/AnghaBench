
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brcmf_usbreq {int list; } ;
struct brcmf_usbdev_info {int qlock; } ;


 int list_del_init (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void brcmf_usb_del_fromq(struct brcmf_usbdev_info *devinfo,
    struct brcmf_usbreq *req)
{
 unsigned long flags;

 spin_lock_irqsave(&devinfo->qlock, flags);
 list_del_init(&req->list);
 spin_unlock_irqrestore(&devinfo->qlock, flags);
}
