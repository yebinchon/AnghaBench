
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ SMP_CACHE_BYTES ;

__attribute__((used)) static inline void ibmveth_flush_buffer(void *addr, unsigned long length)
{
 unsigned long offset;

 for (offset = 0; offset < length; offset += SMP_CACHE_BYTES)
  asm("dcbfl %0,%1" :: "b" (addr), "r" (offset));
}
