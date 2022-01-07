
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef void* u32 ;
struct jpeg_display_buffer_address_t {int dummy; } ;
struct TYPE_5__ {int struct_size; void* display_decimated_chroma_p; void* display_decimated_luma_p; } ;
struct jpeg_decode_return_params_t {int error_code; TYPE_2__ display_buffer_addr; int decoding_mode; int vertical_decimation_factor; int horizontal_decimation_factor; int additional_flags; int main_aux_enable; void* picture_end_addr_p; void* picture_start_addr_p; } ;
struct jpeg_decode_params_t {int error_code; TYPE_2__ display_buffer_addr; int decoding_mode; int vertical_decimation_factor; int horizontal_decimation_factor; int additional_flags; int main_aux_enable; void* picture_end_addr_p; void* picture_start_addr_p; } ;
struct delta_mjpeg_ctx {struct delta_frame* out_frame; int str; int ipc_hdl; TYPE_1__* ipc_buf; } ;
struct delta_ipc_param {int size; struct jpeg_decode_return_params_t* data; } ;
struct TYPE_6__ {int aligned_width; int aligned_height; } ;
struct delta_frame {int state; int flags; int field; TYPE_3__ info; scalar_t__ paddr; } ;
struct delta_dev {int dev; } ;
struct delta_ctx {int name; int decoded_frames; struct delta_dev* dev; } ;
struct delta_au {int paddr; int size; } ;
struct TYPE_4__ {struct jpeg_decode_return_params_t* vaddr; } ;


 int DELTA_FRAME_DEC ;
 int JPEG_ADDITIONAL_FLAG_420MB ;
 int JPEG_DECODER_NO_ERROR ;
 int JPEG_DISP_AUX_EN ;
 int JPEG_HDEC_1 ;
 int JPEG_NORMAL_DECODE ;
 int JPEG_VDEC_1 ;
 int V4L2_BUF_FLAG_KEYFRAME ;
 int V4L2_FIELD_NONE ;
 int delta_get_free_frame (struct delta_ctx*,struct delta_frame**) ;
 int delta_ipc_decode (int ,struct delta_ipc_param*,struct delta_ipc_param*) ;
 scalar_t__ delta_mjpeg_check_status (struct delta_ctx*,struct jpeg_decode_return_params_t*) ;
 int dev_err (int ,char*,int ,int ) ;
 int dev_vdbg (int ,char*,int ,int ) ;
 int ipc_decode_param_str (struct jpeg_decode_return_params_t*,int ,int) ;
 int memset (struct jpeg_decode_return_params_t*,int ,int) ;
 struct delta_mjpeg_ctx* to_ctx (struct delta_ctx*) ;

__attribute__((used)) static int delta_mjpeg_ipc_decode(struct delta_ctx *pctx, struct delta_au *au)
{
 struct delta_dev *delta = pctx->dev;
 struct delta_mjpeg_ctx *ctx = to_ctx(pctx);
 int ret = 0;
 struct jpeg_decode_params_t *params = ctx->ipc_buf->vaddr;
 struct jpeg_decode_return_params_t *status =
     ctx->ipc_buf->vaddr + sizeof(*params);
 struct delta_frame *frame;
 struct delta_ipc_param ipc_param, ipc_status;

 ret = delta_get_free_frame(pctx, &frame);
 if (ret)
  return ret;

 memset(params, 0, sizeof(*params));

 params->picture_start_addr_p = (u32)(au->paddr);
 params->picture_end_addr_p = (u32)(au->paddr + au->size - 1);
 params->main_aux_enable = JPEG_DISP_AUX_EN;
 params->additional_flags = JPEG_ADDITIONAL_FLAG_420MB;
 params->horizontal_decimation_factor = JPEG_HDEC_1;
 params->vertical_decimation_factor = JPEG_VDEC_1;
 params->decoding_mode = JPEG_NORMAL_DECODE;

 params->display_buffer_addr.struct_size =
     sizeof(struct jpeg_display_buffer_address_t);
 params->display_buffer_addr.display_decimated_luma_p =
     (u32)frame->paddr;
 params->display_buffer_addr.display_decimated_chroma_p =
     (u32)(frame->paddr
    + frame->info.aligned_width * frame->info.aligned_height);

 dev_vdbg(delta->dev,
   "%s  %s\n", pctx->name,
   ipc_decode_param_str(params, ctx->str, sizeof(ctx->str)));


 memset(status, 0, sizeof(*status));
 status->error_code = JPEG_DECODER_NO_ERROR;

 ipc_param.size = sizeof(*params);
 ipc_param.data = params;
 ipc_status.size = sizeof(*status);
 ipc_status.data = status;
 ret = delta_ipc_decode(ctx->ipc_hdl, &ipc_param, &ipc_status);
 if (ret) {
  dev_err(delta->dev,
   "%s  dumping command %s\n", pctx->name,
   ipc_decode_param_str(params, ctx->str,
          sizeof(ctx->str)));
  return ret;
 }

 pctx->decoded_frames++;


 if (delta_mjpeg_check_status(pctx, status)) {
  dev_err(delta->dev,
   "%s  dumping command %s\n", pctx->name,
   ipc_decode_param_str(params, ctx->str,
          sizeof(ctx->str)));
 }

 frame->field = V4L2_FIELD_NONE;
 frame->flags = V4L2_BUF_FLAG_KEYFRAME;
 frame->state |= DELTA_FRAME_DEC;

 ctx->out_frame = frame;

 return 0;
}
