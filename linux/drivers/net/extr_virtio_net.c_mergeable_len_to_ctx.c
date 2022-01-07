
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int MRG_CTX_HEADER_SHIFT ;

__attribute__((used)) static void *mergeable_len_to_ctx(unsigned int truesize,
      unsigned int headroom)
{
 return (void *)(unsigned long)((headroom << MRG_CTX_HEADER_SHIFT) | truesize);
}
