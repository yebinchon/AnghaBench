
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pixelformat; } ;
struct TYPE_4__ {TYPE_1__ pix_mp; } ;
struct v4l2_format {TYPE_2__ fmt; } ;
struct s5p_mfc_ctx {void* dst_fmt; void* src_fmt; } ;


 int DEF_DST_FMT_ENC ;
 int DEF_SRC_FMT_ENC ;
 int MFC_FMT_ENC ;
 int MFC_FMT_RAW ;
 void* find_format (struct v4l2_format*,int ) ;

void s5p_mfc_enc_init(struct s5p_mfc_ctx *ctx)
{
 struct v4l2_format f;
 f.fmt.pix_mp.pixelformat = DEF_SRC_FMT_ENC;
 ctx->src_fmt = find_format(&f, MFC_FMT_RAW);
 f.fmt.pix_mp.pixelformat = DEF_DST_FMT_ENC;
 ctx->dst_fmt = find_format(&f, MFC_FMT_ENC);
}
