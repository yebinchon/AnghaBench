
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IS_ALIGNED (uintptr_t,int) ;
 int is_vmalloc_addr (void const*) ;
 scalar_t__ likely (int ) ;

__attribute__((used)) static inline bool flash_dma_buf_ok(const void *buf)
{
 return buf && !is_vmalloc_addr(buf) &&
  likely(IS_ALIGNED((uintptr_t)buf, 4));
}
