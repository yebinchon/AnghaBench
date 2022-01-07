
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct cx25821_audio_dev {struct cx25821_audio_buffer* buf; } ;
struct cx25821_audio_buffer {int nr_pages; int * vaddr; int * sglist; } ;


 int ENOMEM ;
 int PAGE_SHIFT ;
 int PAGE_SIZE ;
 int array_size (int,int) ;
 int dprintk (int,char*,int,...) ;
 int memset (int *,int ,int) ;
 int sg_init_table (int *,int) ;
 int sg_set_page (int *,struct page*,int,int ) ;
 int vfree (int *) ;
 int * vmalloc_32 (int) ;
 struct page* vmalloc_to_page (int *) ;
 int * vzalloc (int ) ;

__attribute__((used)) static int cx25821_alsa_dma_init(struct cx25821_audio_dev *chip, int nr_pages)
{
 struct cx25821_audio_buffer *buf = chip->buf;
 struct page *pg;
 int i;

 buf->vaddr = vmalloc_32(nr_pages << PAGE_SHIFT);
 if (((void*)0) == buf->vaddr) {
  dprintk(1, "vmalloc_32(%d pages) failed\n", nr_pages);
  return -ENOMEM;
 }

 dprintk(1, "vmalloc is at addr 0x%p, size=%d\n",
    buf->vaddr,
    nr_pages << PAGE_SHIFT);

 memset(buf->vaddr, 0, nr_pages << PAGE_SHIFT);
 buf->nr_pages = nr_pages;

 buf->sglist = vzalloc(array_size(sizeof(*buf->sglist), buf->nr_pages));
 if (((void*)0) == buf->sglist)
  goto vzalloc_err;

 sg_init_table(buf->sglist, buf->nr_pages);
 for (i = 0; i < buf->nr_pages; i++) {
  pg = vmalloc_to_page(buf->vaddr + i * PAGE_SIZE);
  if (((void*)0) == pg)
   goto vmalloc_to_page_err;
  sg_set_page(&buf->sglist[i], pg, PAGE_SIZE, 0);
 }
 return 0;

vmalloc_to_page_err:
 vfree(buf->sglist);
 buf->sglist = ((void*)0);
vzalloc_err:
 vfree(buf->vaddr);
 buf->vaddr = ((void*)0);
 return -ENOMEM;
}
