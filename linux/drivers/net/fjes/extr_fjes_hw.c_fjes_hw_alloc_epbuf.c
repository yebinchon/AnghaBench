
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union ep_buffer_info {int dummy; } ep_buffer_info ;
typedef int u8 ;
struct epbuf_handler {int * ring; union ep_buffer_info* info; int size; void* buffer; } ;


 int ENOMEM ;
 int EP_BUFFER_SIZE ;
 void* vzalloc (int ) ;

__attribute__((used)) static int fjes_hw_alloc_epbuf(struct epbuf_handler *epbh)
{
 void *mem;

 mem = vzalloc(EP_BUFFER_SIZE);
 if (!mem)
  return -ENOMEM;

 epbh->buffer = mem;
 epbh->size = EP_BUFFER_SIZE;

 epbh->info = (union ep_buffer_info *)mem;
 epbh->ring = (u8 *)(mem + sizeof(union ep_buffer_info));

 return 0;
}
