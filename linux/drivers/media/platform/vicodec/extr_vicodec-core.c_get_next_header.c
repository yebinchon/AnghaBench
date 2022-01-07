
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {int header; } ;
struct vicodec_ctx {int header_size; size_t comp_magic_cnt; TYPE_1__ state; } ;
struct fwht_cframe_hdr {int dummy; } ;
typedef int magic ;
typedef enum vb2_buffer_state { ____Placeholder_vb2_buffer_state } vb2_buffer_state ;


 int VB2_BUF_STATE_DONE ;
 int VB2_BUF_STATE_ERROR ;
 int* memchr (int*,int const,int) ;
 int memcmp (int*,int const*,int) ;
 int memcpy (int*,int*,int) ;

__attribute__((used)) static enum vb2_buffer_state get_next_header(struct vicodec_ctx *ctx,
          u8 **pp, u32 sz)
{
 static const u8 magic[] = {
  0x4f, 0x4f, 0x4f, 0x4f, 0xff, 0xff, 0xff, 0xff
 };
 u8 *p = *pp;
 u32 state;
 u8 *header = (u8 *)&ctx->state.header;

 state = VB2_BUF_STATE_DONE;

 if (!ctx->header_size) {
  state = VB2_BUF_STATE_ERROR;
  for (; p < *pp + sz; p++) {
   u32 copy;

   p = memchr(p, magic[ctx->comp_magic_cnt],
       *pp + sz - p);
   if (!p) {
    ctx->comp_magic_cnt = 0;
    p = *pp + sz;
    break;
   }
   copy = sizeof(magic) - ctx->comp_magic_cnt;
   if (*pp + sz - p < copy)
    copy = *pp + sz - p;

   memcpy(header + ctx->comp_magic_cnt, p, copy);
   ctx->comp_magic_cnt += copy;
   if (!memcmp(header, magic, ctx->comp_magic_cnt)) {
    p += copy;
    state = VB2_BUF_STATE_DONE;
    break;
   }
   ctx->comp_magic_cnt = 0;
  }
  if (ctx->comp_magic_cnt < sizeof(magic)) {
   *pp = p;
   return state;
  }
  ctx->header_size = sizeof(magic);
 }

 if (ctx->header_size < sizeof(struct fwht_cframe_hdr)) {
  u32 copy = sizeof(struct fwht_cframe_hdr) - ctx->header_size;

  if (*pp + sz - p < copy)
   copy = *pp + sz - p;

  memcpy(header + ctx->header_size, p, copy);
  p += copy;
  ctx->header_size += copy;
 }
 *pp = p;
 return state;
}
