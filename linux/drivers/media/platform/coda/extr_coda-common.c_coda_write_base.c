
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vb2_v4l2_buffer {int vb2_buf; } ;
struct coda_q_data {int fourcc; int bytesperline; int height; } ;
struct coda_ctx {int dev; } ;







 int coda_write (int ,int,unsigned int) ;
 int vb2_dma_contig_plane_dma_addr (int *,int ) ;

void coda_write_base(struct coda_ctx *ctx, struct coda_q_data *q_data,
       struct vb2_v4l2_buffer *buf, unsigned int reg_y)
{
 u32 base_y = vb2_dma_contig_plane_dma_addr(&buf->vb2_buf, 0);
 u32 base_cb, base_cr;

 switch (q_data->fourcc) {
 case 129:

 case 132:
 case 131:
 default:
  base_cb = base_y + q_data->bytesperline * q_data->height;
  base_cr = base_cb + q_data->bytesperline * q_data->height / 4;
  break;
 case 128:

  base_cr = base_y + q_data->bytesperline * q_data->height;
  base_cb = base_cr + q_data->bytesperline * q_data->height / 4;
  break;
 case 130:
  base_cb = base_y + q_data->bytesperline * q_data->height;
  base_cr = base_cb + q_data->bytesperline * q_data->height / 2;
 }

 coda_write(ctx->dev, base_y, reg_y);
 coda_write(ctx->dev, base_cb, reg_y + 4);
 coda_write(ctx->dev, base_cr, reg_y + 8);
}
