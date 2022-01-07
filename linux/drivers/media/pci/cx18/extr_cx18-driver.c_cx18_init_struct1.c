
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_34__ TYPE_9__ ;
typedef struct TYPE_33__ TYPE_8__ ;
typedef struct TYPE_32__ TYPE_7__ ;
typedef struct TYPE_31__ TYPE_6__ ;
typedef struct TYPE_30__ TYPE_5__ ;
typedef struct TYPE_29__ TYPE_4__ ;
typedef struct TYPE_28__ TYPE_3__ ;
typedef struct TYPE_27__ TYPE_2__ ;
typedef struct TYPE_26__ TYPE_1__ ;
typedef struct TYPE_25__ TYPE_17__ ;
typedef struct TYPE_24__ TYPE_16__ ;
typedef struct TYPE_23__ TYPE_15__ ;
typedef struct TYPE_22__ TYPE_14__ ;
typedef struct TYPE_21__ TYPE_13__ ;
typedef struct TYPE_20__ TYPE_12__ ;
typedef struct TYPE_19__ TYPE_11__ ;
typedef struct TYPE_18__ TYPE_10__ ;


struct TYPE_23__ {int buf_list; int list; } ;
struct TYPE_22__ {int list; } ;
struct TYPE_20__ {int sliced; } ;
struct TYPE_21__ {TYPE_12__ fmt; int type; } ;
struct TYPE_24__ {TYPE_15__ sliced_mpeg_mdl; TYPE_14__ sliced_mpeg_buf; TYPE_13__ in; int * sliced_in; } ;
struct TYPE_25__ {int capabilities; TYPE_11__* video_median_filter_type; TYPE_9__* video_temporal_filter_mode; TYPE_7__* video_spatial_filter_mode; TYPE_5__* video_spatial_filter; TYPE_3__* video_temporal_filter; int hdl; int * priv; int func; int * ops; int port; } ;
struct TYPE_26__ {int * ctrl_handler; } ;
struct cx18 {int open_id; int filter_mode; TYPE_16__ vbi; int dma_waitq; int mb_cpu_waitq; int mb_apu_waitq; int cap_w; TYPE_17__ cxhdl; int spatial_strength; int temporal_strength; TYPE_1__ v4l2_dev; int * streams; int epu2cpu_mb_lock; int epu2apu_mb_lock; int gpio_lock; int serialize_lock; int pci_dev; int base_addr; } ;
struct TYPE_33__ {int val; } ;
struct TYPE_34__ {TYPE_8__ cur; } ;
struct TYPE_31__ {int val; } ;
struct TYPE_32__ {TYPE_6__ cur; } ;
struct TYPE_29__ {int val; } ;
struct TYPE_30__ {TYPE_4__ cur; } ;
struct TYPE_27__ {int val; } ;
struct TYPE_28__ {TYPE_2__ cur; } ;
struct TYPE_18__ {int val; } ;
struct TYPE_19__ {TYPE_10__ cur; } ;


 size_t CX18_ENC_STREAM_TYPE_MPG ;
 int CX2341X_CAP_HAS_SLICED_VBI ;
 int CX2341X_CAP_HAS_TS ;
 int CX2341X_PORT_MEMORY ;
 int INIT_LIST_HEAD (int *) ;
 int V4L2_BUF_TYPE_VBI_CAPTURE ;
 int cx18_api_func ;
 int cx18_create_in_workq (struct cx18*) ;
 int cx18_cxhdl_ops ;
 int cx18_init_in_work_orders (struct cx18*) ;
 int cx2341x_handler_init (TYPE_17__*,int) ;
 int init_waitqueue_head (int *) ;
 int list_add (int *,int *) ;
 int mutex_init (int *) ;
 int pci_resource_start (int ,int ) ;

__attribute__((used)) static int cx18_init_struct1(struct cx18 *cx)
{
 int ret;

 cx->base_addr = pci_resource_start(cx->pci_dev, 0);

 mutex_init(&cx->serialize_lock);
 mutex_init(&cx->gpio_lock);
 mutex_init(&cx->epu2apu_mb_lock);
 mutex_init(&cx->epu2cpu_mb_lock);

 ret = cx18_create_in_workq(cx);
 if (ret)
  return ret;

 cx18_init_in_work_orders(cx);


 cx->open_id = 1;


 cx->cxhdl.port = CX2341X_PORT_MEMORY;
 cx->cxhdl.capabilities = CX2341X_CAP_HAS_TS | CX2341X_CAP_HAS_SLICED_VBI;
 cx->cxhdl.ops = &cx18_cxhdl_ops;
 cx->cxhdl.func = cx18_api_func;
 cx->cxhdl.priv = &cx->streams[CX18_ENC_STREAM_TYPE_MPG];
 ret = cx2341x_handler_init(&cx->cxhdl, 50);
 if (ret)
  return ret;
 cx->v4l2_dev.ctrl_handler = &cx->cxhdl.hdl;

 cx->temporal_strength = cx->cxhdl.video_temporal_filter->cur.val;
 cx->spatial_strength = cx->cxhdl.video_spatial_filter->cur.val;
 cx->filter_mode = cx->cxhdl.video_spatial_filter_mode->cur.val |
  (cx->cxhdl.video_temporal_filter_mode->cur.val << 1) |
  (cx->cxhdl.video_median_filter_type->cur.val << 2);

 init_waitqueue_head(&cx->cap_w);
 init_waitqueue_head(&cx->mb_apu_waitq);
 init_waitqueue_head(&cx->mb_cpu_waitq);
 init_waitqueue_head(&cx->dma_waitq);


 cx->vbi.in.type = V4L2_BUF_TYPE_VBI_CAPTURE;
 cx->vbi.sliced_in = &cx->vbi.in.fmt.sliced;


 INIT_LIST_HEAD(&cx->vbi.sliced_mpeg_buf.list);
 INIT_LIST_HEAD(&cx->vbi.sliced_mpeg_mdl.list);
 INIT_LIST_HEAD(&cx->vbi.sliced_mpeg_mdl.buf_list);
 list_add(&cx->vbi.sliced_mpeg_buf.list,
   &cx->vbi.sliced_mpeg_mdl.buf_list);
 return 0;
}
