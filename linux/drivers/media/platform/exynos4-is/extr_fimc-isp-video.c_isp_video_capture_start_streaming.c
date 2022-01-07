
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vb2_queue {int dummy; } ;
struct param_dma_output {scalar_t__ buffer_address; int dma_out_mask; int buffer_number; int notify_dma_done; int cmd; } ;
struct TYPE_4__ {int vdev; } ;
struct fimc_is_video {TYPE_2__ ve; TYPE_1__* format; int buf_count; int buf_mask; int reqbufs_count; } ;
struct fimc_isp {int state; struct fimc_is_video video_capture; } ;
struct fimc_is {scalar_t__ is_dma_p_region; } ;
struct TYPE_3__ {int memplanes; } ;


 scalar_t__ DMA2_OUTPUT_ADDR_ARRAY_OFFS ;
 int DMA_OUTPUT_COMMAND_ENABLE ;
 int DMA_OUTPUT_NOTIFY_DMA_DONE_ENABLE ;
 int PARAM_ISP_DMA2_OUTPUT ;
 int ST_ISP_VID_CAP_BUF_PREP ;
 int ST_ISP_VID_CAP_STREAMING ;
 int __fimc_is_hw_update_param (struct fimc_is*,int ) ;
 struct param_dma_output* __get_isp_dma2 (struct fimc_is*) ;
 int fimc_is_itf_s_param (struct fimc_is*,int) ;
 int fimc_is_mem_barrier () ;
 int fimc_is_set_param_bit (struct fimc_is*,int ) ;
 struct fimc_is* fimc_isp_to_is (struct fimc_isp*) ;
 int fimc_pipeline_call (TYPE_2__*,int ,int) ;
 int isp_dbg (int,int *,char*,int ,int ,scalar_t__) ;
 int set_bit (int ,int *) ;
 int set_stream ;
 scalar_t__ test_bit (int ,int *) ;
 struct fimc_isp* vb2_get_drv_priv (struct vb2_queue*) ;

__attribute__((used)) static int isp_video_capture_start_streaming(struct vb2_queue *q,
      unsigned int count)
{
 struct fimc_isp *isp = vb2_get_drv_priv(q);
 struct fimc_is *is = fimc_isp_to_is(isp);
 struct param_dma_output *dma = __get_isp_dma2(is);
 struct fimc_is_video *video = &isp->video_capture;
 int ret;

 if (!test_bit(ST_ISP_VID_CAP_BUF_PREP, &isp->state) ||
     test_bit(ST_ISP_VID_CAP_STREAMING, &isp->state))
  return 0;


 dma->cmd = DMA_OUTPUT_COMMAND_ENABLE;
 dma->notify_dma_done = DMA_OUTPUT_NOTIFY_DMA_DONE_ENABLE;
 dma->buffer_address = is->is_dma_p_region +
    DMA2_OUTPUT_ADDR_ARRAY_OFFS;
 dma->buffer_number = video->reqbufs_count;
 dma->dma_out_mask = video->buf_mask;

 isp_dbg(2, &video->ve.vdev,
  "buf_count: %d, planes: %d, dma addr table: %#x\n",
  video->buf_count, video->format->memplanes,
  dma->buffer_address);

 fimc_is_mem_barrier();

 fimc_is_set_param_bit(is, PARAM_ISP_DMA2_OUTPUT);
 __fimc_is_hw_update_param(is, PARAM_ISP_DMA2_OUTPUT);

 ret = fimc_is_itf_s_param(is, 0);
 if (ret < 0)
  return ret;

 ret = fimc_pipeline_call(&video->ve, set_stream, 1);
 if (ret < 0)
  return ret;

 set_bit(ST_ISP_VID_CAP_STREAMING, &isp->state);
 return ret;
}
