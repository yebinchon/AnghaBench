
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_queue {int dummy; } ;
struct dvb_usb_device {struct cxusb_medion_dev* priv; } ;
struct device {int dummy; } ;
struct cxusb_medion_dev {int width; int height; } ;


 int EINVAL ;
 struct dvb_usb_device* vb2_get_drv_priv (struct vb2_queue*) ;

__attribute__((used)) static int cxusb_medion_v_queue_setup(struct vb2_queue *q,
          unsigned int *num_buffers,
          unsigned int *num_planes,
          unsigned int sizes[],
          struct device *alloc_devs[])
{
 struct dvb_usb_device *dvbdev = vb2_get_drv_priv(q);
 struct cxusb_medion_dev *cxdev = dvbdev->priv;
 unsigned int size = cxdev->width * cxdev->height * 2;

 if (*num_planes > 0) {
  if (*num_planes != 1)
   return -EINVAL;

  if (sizes[0] < size)
   return -EINVAL;
 } else {
  *num_planes = 1;
  sizes[0] = size;
 }

 return 0;
}
