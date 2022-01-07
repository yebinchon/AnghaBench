
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fwht_cframe_hdr {void* quantization; void* ycbcr_enc; void* xfer_func; void* colorspace; void* flags; void* height; void* width; void* version; int magic2; int magic1; } ;
struct TYPE_2__ {struct fwht_cframe_hdr header; } ;
struct vicodec_ctx {TYPE_1__ state; } ;
struct v4l2_ctrl_fwht_params {int quantization; int ycbcr_enc; int xfer_func; int colorspace; int flags; int height; int width; int version; } ;


 int FWHT_MAGIC1 ;
 int FWHT_MAGIC2 ;
 void* htonl (int ) ;

__attribute__((used)) static void update_header_from_stateless_params(struct vicodec_ctx *ctx,
      const struct v4l2_ctrl_fwht_params *params)
{
 struct fwht_cframe_hdr *p_hdr = &ctx->state.header;

 p_hdr->magic1 = FWHT_MAGIC1;
 p_hdr->magic2 = FWHT_MAGIC2;
 p_hdr->version = htonl(params->version);
 p_hdr->width = htonl(params->width);
 p_hdr->height = htonl(params->height);
 p_hdr->flags = htonl(params->flags);
 p_hdr->colorspace = htonl(params->colorspace);
 p_hdr->xfer_func = htonl(params->xfer_func);
 p_hdr->ycbcr_enc = htonl(params->ycbcr_enc);
 p_hdr->quantization = htonl(params->quantization);
}
