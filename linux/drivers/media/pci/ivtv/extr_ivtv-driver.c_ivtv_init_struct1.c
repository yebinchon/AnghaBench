
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_9__ ;
typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct sched_param {int sched_priority; } ;
struct TYPE_18__ {int max_frames_buffered; int track_osd; int lace_threshold; int lace_mode; int next_dma_frame; } ;
struct TYPE_17__ {int SGlist; int lock; } ;
struct TYPE_14__ {int sliced; } ;
struct TYPE_15__ {TYPE_5__ fmt; int type; } ;
struct TYPE_16__ {TYPE_6__ in; int * sliced_in; } ;
struct TYPE_13__ {int capabilities; int port; } ;
struct TYPE_12__ {int name; } ;
struct TYPE_11__ {int max_mbox; } ;
struct TYPE_10__ {int max_mbox; } ;
struct ivtv {int cur_dma_stream; int cur_pio_stream; int speed; int osd_global_alpha_state; int osd_global_alpha; TYPE_9__ yuv_info; TYPE_8__ udma; TYPE_7__ vbi; int dma_timer; int dma_waitq; int vsync_waitq; int event_waitq; int eos_waitq; TYPE_4__ cxhdl; int irq_work; int irq_worker_task; TYPE_3__ v4l2_dev; int irq_worker; int dma_reg_lock; int lock; int i2c_bus_lock; int serialize_lock; TYPE_2__ dec_mbox; TYPE_1__ enc_mbox; int pdev; int base_addr; } ;


 int CX2341X_CAP_HAS_SLICED_VBI ;
 int CX2341X_PORT_MEMORY ;
 scalar_t__ IS_ERR (int ) ;
 int IVTV_DMA_SG_OSD_ENT ;
 int IVTV_ERR (char*) ;
 int SCHED_FIFO ;
 int V4L2_BUF_TYPE_VBI_CAPTURE ;
 int atomic_set (int *,int) ;
 int init_waitqueue_head (int *) ;
 int ivtv_irq_work_handler ;
 int ivtv_unfinished_dma ;
 int ivtv_yuv_mode ;
 int ivtv_yuv_threshold ;
 int kthread_init_work (int *,int ) ;
 int kthread_init_worker (int *) ;
 int kthread_run (int ,int *,char*,int ) ;
 int kthread_worker_fn ;
 int mutex_init (int *) ;
 int pci_resource_start (int ,int ) ;
 int sched_setscheduler (int ,int ,struct sched_param*) ;
 int sg_init_table (int ,int ) ;
 int spin_lock_init (int *) ;
 int timer_setup (int *,int ,int ) ;

__attribute__((used)) static int ivtv_init_struct1(struct ivtv *itv)
{
 struct sched_param param = { .sched_priority = 99 };

 itv->base_addr = pci_resource_start(itv->pdev, 0);
 itv->enc_mbox.max_mbox = 2;
 itv->dec_mbox.max_mbox = 1;

 mutex_init(&itv->serialize_lock);
 mutex_init(&itv->i2c_bus_lock);
 mutex_init(&itv->udma.lock);

 spin_lock_init(&itv->lock);
 spin_lock_init(&itv->dma_reg_lock);

 kthread_init_worker(&itv->irq_worker);
 itv->irq_worker_task = kthread_run(kthread_worker_fn, &itv->irq_worker,
        "%s", itv->v4l2_dev.name);
 if (IS_ERR(itv->irq_worker_task)) {
  IVTV_ERR("Could not create ivtv task\n");
  return -1;
 }

 sched_setscheduler(itv->irq_worker_task, SCHED_FIFO, &param);

 kthread_init_work(&itv->irq_work, ivtv_irq_work_handler);


 itv->cxhdl.port = CX2341X_PORT_MEMORY;
 itv->cxhdl.capabilities = CX2341X_CAP_HAS_SLICED_VBI;
 init_waitqueue_head(&itv->eos_waitq);
 init_waitqueue_head(&itv->event_waitq);
 init_waitqueue_head(&itv->vsync_waitq);
 init_waitqueue_head(&itv->dma_waitq);
 timer_setup(&itv->dma_timer, ivtv_unfinished_dma, 0);

 itv->cur_dma_stream = -1;
 itv->cur_pio_stream = -1;


 itv->speed = 1000;


 itv->vbi.in.type = V4L2_BUF_TYPE_VBI_CAPTURE;
 itv->vbi.sliced_in = &itv->vbi.in.fmt.sliced;


 sg_init_table(itv->udma.SGlist, IVTV_DMA_SG_OSD_ENT);


 itv->osd_global_alpha_state = 1;
 itv->osd_global_alpha = 255;


 atomic_set(&itv->yuv_info.next_dma_frame, -1);
 itv->yuv_info.lace_mode = ivtv_yuv_mode;
 itv->yuv_info.lace_threshold = ivtv_yuv_threshold;
 itv->yuv_info.max_frames_buffered = 3;
 itv->yuv_info.track_osd = 1;
 return 0;
}
