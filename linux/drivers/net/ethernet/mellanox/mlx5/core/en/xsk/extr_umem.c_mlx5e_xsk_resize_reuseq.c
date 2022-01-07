
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xdp_umem_fq_reuse {int dummy; } ;
struct xdp_umem {int dummy; } ;


 int ENOMEM ;
 scalar_t__ unlikely (int) ;
 int xsk_reuseq_free (int ) ;
 struct xdp_umem_fq_reuse* xsk_reuseq_prepare (int ) ;
 int xsk_reuseq_swap (struct xdp_umem*,struct xdp_umem_fq_reuse*) ;

int mlx5e_xsk_resize_reuseq(struct xdp_umem *umem, u32 nentries)
{
 struct xdp_umem_fq_reuse *reuseq;

 reuseq = xsk_reuseq_prepare(nentries);
 if (unlikely(!reuseq))
  return -ENOMEM;
 xsk_reuseq_free(xsk_reuseq_swap(umem, reuseq));

 return 0;
}
