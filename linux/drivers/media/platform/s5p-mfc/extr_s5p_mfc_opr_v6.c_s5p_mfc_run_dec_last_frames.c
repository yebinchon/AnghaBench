
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s5p_mfc_dev {int curr_ctx; } ;
struct s5p_mfc_ctx {int num; struct s5p_mfc_dev* dev; } ;


 int MFC_DEC_LAST_FRAME ;
 int s5p_mfc_decode_one_frame_v6 (struct s5p_mfc_ctx*,int ) ;
 int s5p_mfc_set_dec_stream_buffer_v6 (struct s5p_mfc_ctx*,int ,int ,int ) ;

__attribute__((used)) static inline void s5p_mfc_run_dec_last_frames(struct s5p_mfc_ctx *ctx)
{
 struct s5p_mfc_dev *dev = ctx->dev;

 s5p_mfc_set_dec_stream_buffer_v6(ctx, 0, 0, 0);
 dev->curr_ctx = ctx->num;
 s5p_mfc_decode_one_frame_v6(ctx, MFC_DEC_LAST_FRAME);
}
