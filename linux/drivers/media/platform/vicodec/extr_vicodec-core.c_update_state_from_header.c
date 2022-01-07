
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fwht_cframe_hdr {int quantization; int ycbcr_enc; int xfer_func; int colorspace; int height; int width; } ;
struct TYPE_2__ {void* quantization; void* ycbcr_enc; void* xfer_func; void* colorspace; void* visible_height; void* visible_width; struct fwht_cframe_hdr header; } ;
struct vicodec_ctx {TYPE_1__ state; } ;


 void* ntohl (int ) ;

__attribute__((used)) static void update_state_from_header(struct vicodec_ctx *ctx)
{
 const struct fwht_cframe_hdr *p_hdr = &ctx->state.header;

 ctx->state.visible_width = ntohl(p_hdr->width);
 ctx->state.visible_height = ntohl(p_hdr->height);
 ctx->state.colorspace = ntohl(p_hdr->colorspace);
 ctx->state.xfer_func = ntohl(p_hdr->xfer_func);
 ctx->state.ycbcr_enc = ntohl(p_hdr->ycbcr_enc);
 ctx->state.quantization = ntohl(p_hdr->quantization);
}
