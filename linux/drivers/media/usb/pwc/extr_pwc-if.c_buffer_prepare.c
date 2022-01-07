
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_buffer {int vb2_queue; } ;
struct pwc_device {int udev; } ;


 int ENODEV ;
 struct pwc_device* vb2_get_drv_priv (int ) ;

__attribute__((used)) static int buffer_prepare(struct vb2_buffer *vb)
{
 struct pwc_device *pdev = vb2_get_drv_priv(vb->vb2_queue);


 if (!pdev->udev)
  return -ENODEV;

 return 0;
}
