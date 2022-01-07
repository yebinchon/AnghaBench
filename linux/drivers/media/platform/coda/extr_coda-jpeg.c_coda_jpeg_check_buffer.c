
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct vb2_buffer {int dummy; } ;
struct coda_ctx {int dummy; } ;
typedef int __be16 ;


 scalar_t__ EOI_MARKER ;
 scalar_t__ SOI_MARKER ;
 scalar_t__ be16_to_cpup (int *) ;
 int vb2_get_plane_payload (struct vb2_buffer*,int ) ;
 void* vb2_plane_vaddr (struct vb2_buffer*,int ) ;
 int vb2_set_plane_payload (struct vb2_buffer*,int ,int) ;

bool coda_jpeg_check_buffer(struct coda_ctx *ctx, struct vb2_buffer *vb)
{
 void *vaddr = vb2_plane_vaddr(vb, 0);
 u16 soi, eoi;
 int len, i;

 soi = be16_to_cpup((__be16 *)vaddr);
 if (soi != SOI_MARKER)
  return 0;

 len = vb2_get_plane_payload(vb, 0);
 vaddr += len - 2;
 for (i = 0; i < 32; i++) {
  eoi = be16_to_cpup((__be16 *)(vaddr - i));
  if (eoi == EOI_MARKER) {
   if (i > 0)
    vb2_set_plane_payload(vb, 0, len - i);
   return 1;
  }
 }

 return 0;
}
