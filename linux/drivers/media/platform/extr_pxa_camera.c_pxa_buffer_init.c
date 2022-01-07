
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vb2_buffer {int dummy; } ;
struct sg_table {int nents; int sgl; } ;
struct pxa_camera_dev {int channels; } ;
struct TYPE_2__ {struct vb2_buffer vb2_buf; } ;
struct pxa_buffer {unsigned long* plane_sizes; int nb_planes; int queue; int * sg_len; int * sg; TYPE_1__ vbuf; } ;


 int EINVAL ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int dev_err (int ,char*,int) ;
 int pcdev_to_dev (struct pxa_camera_dev*) ;
 int pxa_buffer_cleanup (struct pxa_buffer*) ;
 int pxa_init_dma_channel (struct pxa_camera_dev*,struct pxa_buffer*,int,int ,int ) ;
 int sg_split (int ,int ,int ,int,unsigned long*,int *,int *,int ) ;
 struct sg_table* vb2_dma_sg_plane_desc (struct vb2_buffer*,int ) ;
 unsigned long vb2_plane_size (struct vb2_buffer*,int ) ;

__attribute__((used)) static int pxa_buffer_init(struct pxa_camera_dev *pcdev,
      struct pxa_buffer *buf)
{
 struct vb2_buffer *vb = &buf->vbuf.vb2_buf;
 struct sg_table *sgt = vb2_dma_sg_plane_desc(vb, 0);
 int nb_channels = pcdev->channels;
 int i, ret = 0;
 unsigned long size = vb2_plane_size(vb, 0);

 switch (nb_channels) {
 case 1:
  buf->plane_sizes[0] = size;
  break;
 case 3:
  buf->plane_sizes[0] = size / 2;
  buf->plane_sizes[1] = size / 4;
  buf->plane_sizes[2] = size / 4;
  break;
 default:
  return -EINVAL;
 }
 buf->nb_planes = nb_channels;

 ret = sg_split(sgt->sgl, sgt->nents, 0, nb_channels,
         buf->plane_sizes, buf->sg, buf->sg_len, GFP_KERNEL);
 if (ret < 0) {
  dev_err(pcdev_to_dev(pcdev),
   "sg_split failed: %d\n", ret);
  return ret;
 }
 for (i = 0; i < nb_channels; i++) {
  ret = pxa_init_dma_channel(pcdev, buf, i,
        buf->sg[i], buf->sg_len[i]);
  if (ret) {
   pxa_buffer_cleanup(buf);
   return ret;
  }
 }
 INIT_LIST_HEAD(&buf->queue);

 return ret;
}
