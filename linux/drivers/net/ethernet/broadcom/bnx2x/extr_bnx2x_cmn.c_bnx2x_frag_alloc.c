
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x_fastpath {scalar_t__ rx_buf_size; scalar_t__ rx_frag_size; } ;
typedef int gfp_t ;


 scalar_t__ NET_SKB_PAD ;
 scalar_t__ __get_free_page (int ) ;
 int gfpflags_allow_blocking (int ) ;
 void* kmalloc (scalar_t__,int ) ;
 void* napi_alloc_frag (scalar_t__) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static void *bnx2x_frag_alloc(const struct bnx2x_fastpath *fp, gfp_t gfp_mask)
{
 if (fp->rx_frag_size) {

  if (unlikely(gfpflags_allow_blocking(gfp_mask)))
   return (void *)__get_free_page(gfp_mask);

  return napi_alloc_frag(fp->rx_frag_size);
 }

 return kmalloc(fp->rx_buf_size + NET_SKB_PAD, gfp_mask);
}
