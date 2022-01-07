
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long MRG_CTX_HEADER_SHIFT ;

__attribute__((used)) static unsigned int mergeable_ctx_to_headroom(void *mrg_ctx)
{
 return (unsigned long)mrg_ctx >> MRG_CTX_HEADER_SHIFT;
}
