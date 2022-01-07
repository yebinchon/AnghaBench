
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int index; } ;
struct TYPE_3__ {TYPE_2__ vb2_buf; } ;
struct saa7134_buf {TYPE_1__ vb2; } ;


 int saa7134_buffer_pages (int ) ;
 int vb2_plane_size (TYPE_2__*,int ) ;

int saa7134_buffer_startpage(struct saa7134_buf *buf)
{
 return saa7134_buffer_pages(vb2_plane_size(&buf->vb2.vb2_buf, 0))
   * buf->vb2.vb2_buf.index;
}
