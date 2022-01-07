
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cx25821_audio_buffer {int * vaddr; int * sglist; } ;


 int vfree (int *) ;

__attribute__((used)) static int cx25821_alsa_dma_free(struct cx25821_audio_buffer *buf)
{
 vfree(buf->sglist);
 buf->sglist = ((void*)0);
 vfree(buf->vaddr);
 buf->vaddr = ((void*)0);
 return 0;
}
