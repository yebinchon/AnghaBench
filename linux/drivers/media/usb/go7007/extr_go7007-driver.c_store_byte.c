
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_6__ {TYPE_2__* planes; } ;
struct TYPE_4__ {TYPE_3__ vb2_buf; } ;
struct go7007_buffer {TYPE_1__ vb; } ;
struct TYPE_5__ {scalar_t__ bytesused; } ;


 scalar_t__ GO7007_BUF_SIZE ;
 int * vb2_plane_vaddr (TYPE_3__*,int ) ;

__attribute__((used)) static inline void store_byte(struct go7007_buffer *vb, u8 byte)
{
 if (vb && vb->vb.vb2_buf.planes[0].bytesused < GO7007_BUF_SIZE) {
  u8 *ptr = vb2_plane_vaddr(&vb->vb.vb2_buf, 0);

  ptr[vb->vb.vb2_buf.planes[0].bytesused++] = byte;
 }
}
