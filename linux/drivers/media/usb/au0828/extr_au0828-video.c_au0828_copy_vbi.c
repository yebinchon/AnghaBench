
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct au0828_dmaqueue {unsigned long pos; } ;
struct au0828_dev {int vbi_width; int vbi_height; } ;
struct au0828_buffer {unsigned long length; scalar_t__ top_field; } ;


 int au0828_isocdbg (char*) ;

__attribute__((used)) static void au0828_copy_vbi(struct au0828_dev *dev,
         struct au0828_dmaqueue *dma_q,
         struct au0828_buffer *buf,
         unsigned char *p,
         unsigned char *outp, unsigned long len)
{
 unsigned char *startwrite, *startread;
 int bytesperline;
 int i, j = 0;

 if (dev == ((void*)0)) {
  au0828_isocdbg("dev is null\n");
  return;
 }

 if (dma_q == ((void*)0)) {
  au0828_isocdbg("dma_q is null\n");
  return;
 }
 if (buf == ((void*)0))
  return;
 if (p == ((void*)0)) {
  au0828_isocdbg("p is null\n");
  return;
 }
 if (outp == ((void*)0)) {
  au0828_isocdbg("outp is null\n");
  return;
 }

 bytesperline = dev->vbi_width;

 if (dma_q->pos + len > buf->length)
  len = buf->length - dma_q->pos;

 startread = p;
 startwrite = outp + (dma_q->pos / 2);


 if (buf->top_field == 0)
  startwrite += bytesperline * dev->vbi_height;

 for (i = 0; i < len; i += 2)
  startwrite[j++] = startread[i+1];

 dma_q->pos += len;
}
