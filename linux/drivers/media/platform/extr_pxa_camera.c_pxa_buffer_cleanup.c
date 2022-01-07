
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pxa_buffer {scalar_t__ nb_planes; scalar_t__* plane_sizes; scalar_t__* sg_len; int ** sg; int ** descs; } ;


 int dmaengine_desc_free (int *) ;
 int kfree (int *) ;

__attribute__((used)) static void pxa_buffer_cleanup(struct pxa_buffer *buf)
{
 int i;

 for (i = 0; i < 3 && buf->descs[i]; i++) {
  dmaengine_desc_free(buf->descs[i]);
  kfree(buf->sg[i]);
  buf->descs[i] = ((void*)0);
  buf->sg[i] = ((void*)0);
  buf->sg_len[i] = 0;
  buf->plane_sizes[i] = 0;
 }
 buf->nb_planes = 0;
}
