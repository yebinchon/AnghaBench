
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcpy (void*,void const*,unsigned long) ;

__attribute__((used)) static unsigned long
nfp_bpf_perf_event_copy(void *dst, const void *src,
   unsigned long off, unsigned long len)
{
 memcpy(dst, src + off, len);
 return 0;
}
