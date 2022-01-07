
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vb2_v4l2_buffer {int vb2_buf; } ;
struct TYPE_2__ {int pixelformat; int width; int height; } ;
struct sh_vou_device {TYPE_1__ pix; } ;
typedef int dma_addr_t ;




 int VOUAD1R ;
 int VOUAD2R ;
 int sh_vou_reg_m_write (struct sh_vou_device*,int ,int) ;
 int vb2_dma_contig_plane_dma_addr (int *,int ) ;

__attribute__((used)) static void sh_vou_schedule_next(struct sh_vou_device *vou_dev,
     struct vb2_v4l2_buffer *vbuf)
{
 dma_addr_t addr1, addr2;

 addr1 = vb2_dma_contig_plane_dma_addr(&vbuf->vb2_buf, 0);
 switch (vou_dev->pix.pixelformat) {
 case 129:
 case 128:
  addr2 = addr1 + vou_dev->pix.width * vou_dev->pix.height;
  break;
 default:
  addr2 = 0;
 }

 sh_vou_reg_m_write(vou_dev, VOUAD1R, addr1);
 sh_vou_reg_m_write(vou_dev, VOUAD2R, addr2);
}
