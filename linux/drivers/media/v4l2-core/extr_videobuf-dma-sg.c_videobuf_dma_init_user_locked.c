
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct videobuf_dmabuf {int direction; unsigned long offset; unsigned long size; unsigned long nr_pages; int * pages; } ;
struct page {int dummy; } ;


 int BUG () ;


 int EINVAL ;
 int ENOMEM ;
 unsigned int FOLL_FORCE ;
 unsigned int FOLL_LONGTERM ;
 unsigned int FOLL_WRITE ;
 int GFP_KERNEL ;
 unsigned long PAGE_MASK ;
 unsigned long PAGE_SHIFT ;
 int READ ;
 int WRITE ;
 int dprintk (int,char*,int,int,...) ;
 int get_user_pages (unsigned long,unsigned long,unsigned int,int *,int *) ;
 int * kmalloc_array (unsigned long,int,int ) ;

__attribute__((used)) static int videobuf_dma_init_user_locked(struct videobuf_dmabuf *dma,
   int direction, unsigned long data, unsigned long size)
{
 unsigned long first, last;
 int err, rw = 0;
 unsigned int flags = FOLL_FORCE;

 dma->direction = direction;
 switch (dma->direction) {
 case 129:
  rw = READ;
  break;
 case 128:
  rw = WRITE;
  break;
 default:
  BUG();
 }

 first = (data & PAGE_MASK) >> PAGE_SHIFT;
 last = ((data+size-1) & PAGE_MASK) >> PAGE_SHIFT;
 dma->offset = data & ~PAGE_MASK;
 dma->size = size;
 dma->nr_pages = last-first+1;
 dma->pages = kmalloc_array(dma->nr_pages, sizeof(struct page *),
       GFP_KERNEL);
 if (((void*)0) == dma->pages)
  return -ENOMEM;

 if (rw == READ)
  flags |= FOLL_WRITE;

 dprintk(1, "init user [0x%lx+0x%lx => %d pages]\n",
  data, size, dma->nr_pages);

 err = get_user_pages(data & PAGE_MASK, dma->nr_pages,
        flags | FOLL_LONGTERM, dma->pages, ((void*)0));

 if (err != dma->nr_pages) {
  dma->nr_pages = (err >= 0) ? err : 0;
  dprintk(1, "get_user_pages: err=%d [%d]\n", err,
   dma->nr_pages);
  return err < 0 ? err : -EINVAL;
 }
 return 0;
}
