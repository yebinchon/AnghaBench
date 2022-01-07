
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct v4l2_device {int dummy; } ;
struct pci_dev {int dev; } ;
struct TYPE_5__ {struct ivtv** sliced_mpeg_data; } ;
struct TYPE_4__ {int hdl; } ;
struct ivtv {int v4l2_cap; int v4l2_dev; int card_name; TYPE_2__ vbi; TYPE_3__* pdev; scalar_t__ base_addr; scalar_t__ has_cx23415; TYPE_1__ cxhdl; int irq_worker_task; int irq_worker; int dma_timer; int * streams; int i_flags; int decoding; int capturing; } ;
struct TYPE_6__ {int irq; } ;


 int IVTV_DEBUG_INFO (char*) ;
 scalar_t__ IVTV_DECODER_OFFSET ;
 int IVTV_DECODER_SIZE ;
 int IVTV_DEC_STREAM_TYPE_MPG ;
 int IVTV_DEC_STREAM_TYPE_YUV ;
 int IVTV_ENCODER_SIZE ;
 int IVTV_F_I_DEC_YUV ;
 int IVTV_F_I_INITED ;
 int IVTV_HW_SAA7127 ;
 scalar_t__ IVTV_REG_OFFSET ;
 int IVTV_REG_SIZE ;
 int IVTV_VBI_FRAMES ;
 int V4L2_CAP_VIDEO_OUTPUT ;
 int V4L2_DEC_CMD_STOP_IMMEDIATELY ;
 int V4L2_DEC_CMD_STOP_TO_BLACK ;
 scalar_t__ atomic_read (int *) ;
 int del_timer_sync (int *) ;
 struct v4l2_device* dev_get_drvdata (int *) ;
 int exit_ivtv_i2c (struct ivtv*) ;
 int flush_request_modules (struct ivtv*) ;
 int free_irq (int ,void*) ;
 int ivtv_call_hw (struct ivtv*,int ,int ,int ,int ) ;
 int ivtv_halt_firmware (struct ivtv*) ;
 int ivtv_iounmap (struct ivtv*) ;
 int ivtv_set_irq_mask (struct ivtv*,int) ;
 int ivtv_stop_all_captures (struct ivtv*) ;
 int ivtv_stop_v4l2_decode_stream (int *,int,int ) ;
 int ivtv_streams_cleanup (struct ivtv*) ;
 int ivtv_udma_free (struct ivtv*) ;
 int kfree (struct ivtv*) ;
 int kthread_flush_worker (int *) ;
 int kthread_stop (int ) ;
 int pci_disable_device (TYPE_3__*) ;
 int pr_info (char*,int ) ;
 int release_mem_region (scalar_t__,int ) ;
 int s_stream ;
 scalar_t__ test_bit (int ,int *) ;
 struct ivtv* to_ivtv (struct v4l2_device*) ;
 int v4l2_ctrl_handler_free (int *) ;
 int v4l2_device_unregister (int *) ;
 int video ;

__attribute__((used)) static void ivtv_remove(struct pci_dev *pdev)
{
 struct v4l2_device *v4l2_dev = dev_get_drvdata(&pdev->dev);
 struct ivtv *itv = to_ivtv(v4l2_dev);
 int i;

 IVTV_DEBUG_INFO("Removing card\n");

 flush_request_modules(itv);

 if (test_bit(IVTV_F_I_INITED, &itv->i_flags)) {

  IVTV_DEBUG_INFO("Stopping all streams\n");
  if (atomic_read(&itv->capturing) > 0)
   ivtv_stop_all_captures(itv);


  IVTV_DEBUG_INFO("Stopping decoding\n");


  if (itv->v4l2_cap & V4L2_CAP_VIDEO_OUTPUT)
   ivtv_call_hw(itv, IVTV_HW_SAA7127, video, s_stream, 0);
  if (atomic_read(&itv->decoding) > 0) {
   int type;

   if (test_bit(IVTV_F_I_DEC_YUV, &itv->i_flags))
    type = IVTV_DEC_STREAM_TYPE_YUV;
   else
    type = IVTV_DEC_STREAM_TYPE_MPG;
   ivtv_stop_v4l2_decode_stream(&itv->streams[type],
    V4L2_DEC_CMD_STOP_TO_BLACK | V4L2_DEC_CMD_STOP_IMMEDIATELY, 0);
  }
  ivtv_halt_firmware(itv);
 }


 ivtv_set_irq_mask(itv, 0xffffffff);
 del_timer_sync(&itv->dma_timer);


 kthread_flush_worker(&itv->irq_worker);
 kthread_stop(itv->irq_worker_task);

 ivtv_streams_cleanup(itv);
 ivtv_udma_free(itv);

 v4l2_ctrl_handler_free(&itv->cxhdl.hdl);

 exit_ivtv_i2c(itv);

 free_irq(itv->pdev->irq, (void *)itv);
 ivtv_iounmap(itv);

 release_mem_region(itv->base_addr, IVTV_ENCODER_SIZE);
 release_mem_region(itv->base_addr + IVTV_REG_OFFSET, IVTV_REG_SIZE);
 if (itv->has_cx23415)
  release_mem_region(itv->base_addr + IVTV_DECODER_OFFSET, IVTV_DECODER_SIZE);

 pci_disable_device(itv->pdev);
 for (i = 0; i < IVTV_VBI_FRAMES; i++)
  kfree(itv->vbi.sliced_mpeg_data[i]);

 pr_info("Removed %s\n", itv->card_name);

 v4l2_device_unregister(&itv->v4l2_dev);
 kfree(itv);
}
