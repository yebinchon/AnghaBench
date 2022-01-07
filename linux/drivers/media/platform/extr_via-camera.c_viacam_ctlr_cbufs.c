
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int sizeimage; } ;
struct via_camera {int n_cap_bufs; unsigned int fb_offset; unsigned int* cb_offsets; TYPE_2__ sensor_format; scalar_t__ fbmem; scalar_t__* cb_addrs; TYPE_1__* viadev; } ;
struct TYPE_3__ {int camera_fbmem_size; } ;


 int ENOMEM ;
 int VCR_CAPINTC ;
 int VCR_CI_3BUFS ;
 scalar_t__ VCR_VBUF1 ;
 unsigned int VCR_VBUF_MASK ;
 int cam_warn (struct via_camera*,char*) ;
 int viacam_write_reg (struct via_camera*,scalar_t__,unsigned int) ;
 int viacam_write_reg_mask (struct via_camera*,int ,int ,int ) ;

__attribute__((used)) static int viacam_ctlr_cbufs(struct via_camera *cam)
{
 int nbuf = cam->viadev->camera_fbmem_size/cam->sensor_format.sizeimage;
 int i;
 unsigned int offset;




 if (nbuf >= 3) {
  cam->n_cap_bufs = 3;
  viacam_write_reg_mask(cam, VCR_CAPINTC, VCR_CI_3BUFS,
    VCR_CI_3BUFS);
 } else if (nbuf == 2) {
  cam->n_cap_bufs = 2;
  viacam_write_reg_mask(cam, VCR_CAPINTC, 0, VCR_CI_3BUFS);
 } else {
  cam_warn(cam, "Insufficient frame buffer memory\n");
  return -ENOMEM;
 }



 offset = cam->fb_offset;
 for (i = 0; i < cam->n_cap_bufs; i++) {
  cam->cb_offsets[i] = offset;
  cam->cb_addrs[i] = cam->fbmem + offset;
  viacam_write_reg(cam, VCR_VBUF1 + i*4, offset & VCR_VBUF_MASK);
  offset += cam->sensor_format.sizeimage;
 }
 return 0;
}
