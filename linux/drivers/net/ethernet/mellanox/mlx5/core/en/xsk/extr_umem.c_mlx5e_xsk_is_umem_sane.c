
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdp_umem {int headroom; int chunk_size_nohr; } ;



__attribute__((used)) static bool mlx5e_xsk_is_umem_sane(struct xdp_umem *umem)
{
 return umem->headroom <= 0xffff && umem->chunk_size_nohr <= 0xffff;
}
