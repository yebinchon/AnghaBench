
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vb2_buffer {int vb2_queue; } ;
struct TYPE_2__ {int sizeimage; } ;
struct gspca_dev {TYPE_1__ pixfmt; } ;


 int EINVAL ;
 unsigned long PAGE_ALIGN (int ) ;
 int gspca_err (struct gspca_dev*,char*,unsigned long,unsigned long) ;
 struct gspca_dev* vb2_get_drv_priv (int ) ;
 unsigned long vb2_plane_size (struct vb2_buffer*,int ) ;

__attribute__((used)) static int gspca_buffer_prepare(struct vb2_buffer *vb)
{
 struct gspca_dev *gspca_dev = vb2_get_drv_priv(vb->vb2_queue);
 unsigned long size = PAGE_ALIGN(gspca_dev->pixfmt.sizeimage);

 if (vb2_plane_size(vb, 0) < size) {
  gspca_err(gspca_dev, "buffer too small (%lu < %lu)\n",
    vb2_plane_size(vb, 0), size);
  return -EINVAL;
 }
 return 0;
}
