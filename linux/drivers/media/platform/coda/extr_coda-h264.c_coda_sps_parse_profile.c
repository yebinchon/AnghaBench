
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct vb2_buffer {int dummy; } ;
struct TYPE_2__ {int h264_level_idc; int h264_profile_idc; } ;
struct coda_ctx {TYPE_1__ params; } ;


 int EINVAL ;
 int * coda_find_nal_header (int const*,int const*) ;
 int vb2_get_plane_payload (struct vb2_buffer*,int ) ;
 int * vb2_plane_vaddr (struct vb2_buffer*,int ) ;

int coda_sps_parse_profile(struct coda_ctx *ctx, struct vb2_buffer *vb)
{
 const u8 *buf = vb2_plane_vaddr(vb, 0);
 const u8 *end = buf + vb2_get_plane_payload(vb, 0);


 do {
  buf = coda_find_nal_header(buf, end);
  if (!buf)
   return -EINVAL;
 } while ((*buf++ & 0x1f) != 0x7);

 ctx->params.h264_profile_idc = buf[0];
 ctx->params.h264_level_idc = buf[2];

 return 0;
}
