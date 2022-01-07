
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MRG_CTX_HEADER_SHIFT ;

__attribute__((used)) static unsigned int mergeable_ctx_to_truesize(void *mrg_ctx)
{
 return (unsigned long)mrg_ctx & ((1 << MRG_CTX_HEADER_SHIFT) - 1);
}
