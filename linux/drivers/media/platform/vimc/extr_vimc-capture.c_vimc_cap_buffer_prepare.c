
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int name; } ;
struct TYPE_3__ {unsigned long sizeimage; } ;
struct vimc_cap_device {TYPE_2__ vdev; int dev; TYPE_1__ format; } ;
struct vb2_buffer {int vb2_queue; } ;


 int EINVAL ;
 int dev_err (int ,char*,int ,unsigned long,unsigned long) ;
 struct vimc_cap_device* vb2_get_drv_priv (int ) ;
 unsigned long vb2_plane_size (struct vb2_buffer*,int ) ;

__attribute__((used)) static int vimc_cap_buffer_prepare(struct vb2_buffer *vb)
{
 struct vimc_cap_device *vcap = vb2_get_drv_priv(vb->vb2_queue);
 unsigned long size = vcap->format.sizeimage;

 if (vb2_plane_size(vb, 0) < size) {
  dev_err(vcap->dev, "%s: buffer too small (%lu < %lu)\n",
   vcap->vdev.name, vb2_plane_size(vb, 0), size);
  return -EINVAL;
 }
 return 0;
}
