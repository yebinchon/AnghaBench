
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {int width; int num_planes; } ;
struct fdp1_q_data {int vsize; int stride_y; int stride_c; TYPE_2__* fmt; TYPE_1__ format; } ;
struct fdp1_job {TYPE_5__* next; TYPE_4__* active; TYPE_3__* previous; } ;
struct fdp1_dev {int dummy; } ;
struct fdp1_ctx {int* smsk_addr; scalar_t__ deint_mode; struct fdp1_q_data out_q; struct fdp1_dev* fdp1; } ;
struct TYPE_10__ {int* addrs; } ;
struct TYPE_9__ {scalar_t__ field; int* addrs; } ;
struct TYPE_8__ {int* addrs; } ;
struct TYPE_7__ {int fmt; int swap; scalar_t__ swap_uv; scalar_t__ swap_yc; } ;


 int FD1_RPF0_ADDR_Y ;
 int FD1_RPF1_ADDR_C0 ;
 int FD1_RPF1_ADDR_C1 ;
 int FD1_RPF1_ADDR_Y ;
 int FD1_RPF2_ADDR_Y ;
 int FD1_RPF_FORMAT ;
 int FD1_RPF_FORMAT_CF ;
 int FD1_RPF_FORMAT_CIPM ;
 int FD1_RPF_FORMAT_RSPUVS ;
 int FD1_RPF_FORMAT_RSPYCS ;
 int FD1_RPF_PSTRIDE ;
 int FD1_RPF_PSTRIDE_C_SHIFT ;
 int FD1_RPF_PSTRIDE_Y_SHIFT ;
 int FD1_RPF_SIZE ;
 int FD1_RPF_SIZE_H_SHIFT ;
 int FD1_RPF_SIZE_V_SHIFT ;
 int FD1_RPF_SMSK_ADDR ;
 int FD1_RPF_SWAP ;
 scalar_t__ V4L2_FIELD_BOTTOM ;
 int fdp1_write (struct fdp1_dev*,int,int ) ;

__attribute__((used)) static void fdp1_configure_rpf(struct fdp1_ctx *ctx,
          struct fdp1_job *job)
{
 struct fdp1_dev *fdp1 = ctx->fdp1;
 u32 picture_size;
 u32 pstride;
 u32 format;
 u32 smsk_addr;

 struct fdp1_q_data *q_data = &ctx->out_q;


 picture_size = (q_data->format.width << FD1_RPF_SIZE_H_SHIFT)
       | (q_data->vsize << FD1_RPF_SIZE_V_SHIFT);


 pstride = q_data->stride_y << FD1_RPF_PSTRIDE_Y_SHIFT;
 if (q_data->format.num_planes > 1)
  pstride |= q_data->stride_c << FD1_RPF_PSTRIDE_C_SHIFT;


 format = q_data->fmt->fmt;
 if (q_data->fmt->swap_yc)
  format |= FD1_RPF_FORMAT_RSPYCS;

 if (q_data->fmt->swap_uv)
  format |= FD1_RPF_FORMAT_RSPUVS;

 if (job->active->field == V4L2_FIELD_BOTTOM) {
  format |= FD1_RPF_FORMAT_CF;
  smsk_addr = ctx->smsk_addr[0];
 } else {
  smsk_addr = ctx->smsk_addr[1];
 }


 if (ctx->deint_mode)
  format |= FD1_RPF_FORMAT_CIPM;

 fdp1_write(fdp1, format, FD1_RPF_FORMAT);
 fdp1_write(fdp1, q_data->fmt->swap, FD1_RPF_SWAP);
 fdp1_write(fdp1, picture_size, FD1_RPF_SIZE);
 fdp1_write(fdp1, pstride, FD1_RPF_PSTRIDE);
 fdp1_write(fdp1, smsk_addr, FD1_RPF_SMSK_ADDR);


 if (job->previous)
  fdp1_write(fdp1, job->previous->addrs[0], FD1_RPF0_ADDR_Y);


 fdp1_write(fdp1, job->active->addrs[0], FD1_RPF1_ADDR_Y);
 fdp1_write(fdp1, job->active->addrs[1], FD1_RPF1_ADDR_C0);
 fdp1_write(fdp1, job->active->addrs[2], FD1_RPF1_ADDR_C1);


 if (job->next)
  fdp1_write(fdp1, job->next->addrs[0], FD1_RPF2_ADDR_Y);
}
