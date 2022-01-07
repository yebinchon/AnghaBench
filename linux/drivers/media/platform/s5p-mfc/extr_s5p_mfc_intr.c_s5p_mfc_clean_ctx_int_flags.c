
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s5p_mfc_ctx {scalar_t__ int_err; scalar_t__ int_type; scalar_t__ int_cond; } ;



void s5p_mfc_clean_ctx_int_flags(struct s5p_mfc_ctx *ctx)
{
 ctx->int_cond = 0;
 ctx->int_type = 0;
 ctx->int_err = 0;
}
