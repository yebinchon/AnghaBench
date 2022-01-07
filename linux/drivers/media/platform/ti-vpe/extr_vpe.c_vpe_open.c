
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int width; int height; scalar_t__ top; scalar_t__ left; } ;
struct vpe_q_data {int width; int height; int nplanes; int* bytesperline; int* sizeimage; scalar_t__ flags; TYPE_2__ c_rect; int field; int colorspace; TYPE_3__* fmt; } ;
struct vpe_mmr_adb {int dummy; } ;
struct vpe_dev {int dev_mutex; int num_instances; int m2m_dev; } ;
struct TYPE_10__ {int m2m_ctx; struct v4l2_ctrl_handler* ctrl_handler; } ;
struct v4l2_ctrl_handler {int error; } ;
struct vpe_ctx {int load_mmrs; int desc_list; int mmr_adb; int sc_coeff_h; int sc_coeff_v; TYPE_4__ fh; int bufs_per_job; struct vpe_q_data* q_data; struct v4l2_ctrl_handler hdl; struct vpe_dev* dev; } ;
struct file {TYPE_4__* private_data; } ;
struct TYPE_9__ {TYPE_1__** vpdma_fmt; } ;
struct TYPE_7__ {int depth; } ;


 int ENOMEM ;
 int ERESTARTSYS ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 size_t Q_DATA_DST ;
 size_t Q_DATA_SRC ;
 int SC_COEF_SRAM_SIZE ;
 int V4L2_COLORSPACE_REC709 ;
 int V4L2_FIELD_NONE ;
 int VPDMA_LIST_TYPE_NORMAL ;
 int VPE_DEF_BUFS_PER_JOB ;
 int VPE_DESC_LIST_SIZE ;
 size_t VPE_LUMA ;
 int atomic_inc_return (int *) ;
 int init_adb_hdrs (struct vpe_ctx*) ;
 int kfree (struct vpe_ctx*) ;
 struct vpe_ctx* kzalloc (int,int ) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int queue_init ;
 int set_dei_shadow_registers (struct vpe_ctx*) ;
 int set_dst_registers (struct vpe_ctx*) ;
 int set_src_registers (struct vpe_ctx*) ;
 int set_srcdst_params (struct vpe_ctx*) ;
 int v4l2_ctrl_handler_free (struct v4l2_ctrl_handler*) ;
 int v4l2_ctrl_handler_init (struct v4l2_ctrl_handler*,int) ;
 int v4l2_ctrl_handler_setup (struct v4l2_ctrl_handler*) ;
 int v4l2_ctrl_new_custom (struct v4l2_ctrl_handler*,int *,int *) ;
 int v4l2_fh_add (TYPE_4__*) ;
 int v4l2_fh_exit (TYPE_4__*) ;
 int v4l2_fh_init (TYPE_4__*,int ) ;
 int v4l2_m2m_ctx_init (int ,struct vpe_ctx*,int *) ;
 int video_devdata (struct file*) ;
 struct vpe_dev* video_drvdata (struct file*) ;
 int vpdma_alloc_desc_buf (int *,int) ;
 int vpdma_create_desc_list (int *,int ,int ) ;
 int vpdma_free_desc_buf (int *) ;
 int vpdma_free_desc_list (int *) ;
 int vpe_bufs_per_job ;
 int vpe_dbg (struct vpe_dev*,char*,...) ;
 TYPE_3__* vpe_formats ;

__attribute__((used)) static int vpe_open(struct file *file)
{
 struct vpe_dev *dev = video_drvdata(file);
 struct vpe_q_data *s_q_data;
 struct v4l2_ctrl_handler *hdl;
 struct vpe_ctx *ctx;
 int ret;

 vpe_dbg(dev, "vpe_open\n");

 ctx = kzalloc(sizeof(*ctx), GFP_KERNEL);
 if (!ctx)
  return -ENOMEM;

 ctx->dev = dev;

 if (mutex_lock_interruptible(&dev->dev_mutex)) {
  ret = -ERESTARTSYS;
  goto free_ctx;
 }

 ret = vpdma_create_desc_list(&ctx->desc_list, VPE_DESC_LIST_SIZE,
   VPDMA_LIST_TYPE_NORMAL);
 if (ret != 0)
  goto unlock;

 ret = vpdma_alloc_desc_buf(&ctx->mmr_adb, sizeof(struct vpe_mmr_adb));
 if (ret != 0)
  goto free_desc_list;

 ret = vpdma_alloc_desc_buf(&ctx->sc_coeff_h, SC_COEF_SRAM_SIZE);
 if (ret != 0)
  goto free_mmr_adb;

 ret = vpdma_alloc_desc_buf(&ctx->sc_coeff_v, SC_COEF_SRAM_SIZE);
 if (ret != 0)
  goto free_sc_h;

 init_adb_hdrs(ctx);

 v4l2_fh_init(&ctx->fh, video_devdata(file));
 file->private_data = &ctx->fh;

 hdl = &ctx->hdl;
 v4l2_ctrl_handler_init(hdl, 1);
 v4l2_ctrl_new_custom(hdl, &vpe_bufs_per_job, ((void*)0));
 if (hdl->error) {
  ret = hdl->error;
  goto exit_fh;
 }
 ctx->fh.ctrl_handler = hdl;
 v4l2_ctrl_handler_setup(hdl);

 s_q_data = &ctx->q_data[Q_DATA_SRC];
 s_q_data->fmt = &vpe_formats[2];
 s_q_data->width = 1920;
 s_q_data->height = 1080;
 s_q_data->nplanes = 1;
 s_q_data->bytesperline[VPE_LUMA] = (s_q_data->width *
   s_q_data->fmt->vpdma_fmt[VPE_LUMA]->depth) >> 3;
 s_q_data->sizeimage[VPE_LUMA] = (s_q_data->bytesperline[VPE_LUMA] *
   s_q_data->height);
 s_q_data->colorspace = V4L2_COLORSPACE_REC709;
 s_q_data->field = V4L2_FIELD_NONE;
 s_q_data->c_rect.left = 0;
 s_q_data->c_rect.top = 0;
 s_q_data->c_rect.width = s_q_data->width;
 s_q_data->c_rect.height = s_q_data->height;
 s_q_data->flags = 0;

 ctx->q_data[Q_DATA_DST] = *s_q_data;

 set_dei_shadow_registers(ctx);
 set_src_registers(ctx);
 set_dst_registers(ctx);
 ret = set_srcdst_params(ctx);
 if (ret)
  goto exit_fh;

 ctx->fh.m2m_ctx = v4l2_m2m_ctx_init(dev->m2m_dev, ctx, &queue_init);

 if (IS_ERR(ctx->fh.m2m_ctx)) {
  ret = PTR_ERR(ctx->fh.m2m_ctx);
  goto exit_fh;
 }

 v4l2_fh_add(&ctx->fh);






 if (atomic_inc_return(&dev->num_instances) == 1)
  vpe_dbg(dev, "first instance created\n");

 ctx->bufs_per_job = VPE_DEF_BUFS_PER_JOB;

 ctx->load_mmrs = 1;

 vpe_dbg(dev, "created instance %p, m2m_ctx: %p\n",
  ctx, ctx->fh.m2m_ctx);

 mutex_unlock(&dev->dev_mutex);

 return 0;
exit_fh:
 v4l2_ctrl_handler_free(hdl);
 v4l2_fh_exit(&ctx->fh);
 vpdma_free_desc_buf(&ctx->sc_coeff_v);
free_sc_h:
 vpdma_free_desc_buf(&ctx->sc_coeff_h);
free_mmr_adb:
 vpdma_free_desc_buf(&ctx->mmr_adb);
free_desc_list:
 vpdma_free_desc_list(&ctx->desc_list);
unlock:
 mutex_unlock(&dev->dev_mutex);
free_ctx:
 kfree(ctx);
 return ret;
}
