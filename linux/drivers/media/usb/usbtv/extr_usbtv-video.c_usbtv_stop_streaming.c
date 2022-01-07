
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_queue {int dummy; } ;
struct usbtv {scalar_t__ udev; } ;


 int usbtv_stop (struct usbtv*) ;
 struct usbtv* vb2_get_drv_priv (struct vb2_queue*) ;

__attribute__((used)) static void usbtv_stop_streaming(struct vb2_queue *vq)
{
 struct usbtv *usbtv = vb2_get_drv_priv(vq);

 if (usbtv->udev)
  usbtv_stop(usbtv);
}
