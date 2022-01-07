
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_buffer {int num_planes; int index; } ;
struct s5p_mfc_fmt {int num_planes; } ;
typedef int dma_addr_t ;


 int EINVAL ;
 int mfc_debug (int,char*,int ,int,int *) ;
 int mfc_err (char*) ;
 int vb2_dma_contig_plane_dma_addr (struct vb2_buffer*,int) ;

__attribute__((used)) static int check_vb_with_fmt(struct s5p_mfc_fmt *fmt, struct vb2_buffer *vb)
{
 int i;

 if (!fmt)
  return -EINVAL;
 if (fmt->num_planes != vb->num_planes) {
  mfc_err("invalid plane number for the format\n");
  return -EINVAL;
 }
 for (i = 0; i < fmt->num_planes; i++) {
  dma_addr_t dma = vb2_dma_contig_plane_dma_addr(vb, i);
  if (!dma) {
   mfc_err("failed to get plane cookie\n");
   return -EINVAL;
  }
  mfc_debug(2, "index: %d, plane[%d] cookie: %pad\n",
     vb->index, i, &dma);
 }
 return 0;
}
