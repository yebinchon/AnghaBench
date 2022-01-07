
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {size_t index; TYPE_1__* buf; } ;
struct mlx4_en_rx_ring {int log_stride; TYPE_2__ page_cache; struct mlx4_en_rx_alloc* rx_info; struct mlx4_en_rx_desc* buf; } ;
struct mlx4_en_rx_desc {TYPE_3__* data; } ;
struct mlx4_en_rx_alloc {scalar_t__ dma; scalar_t__ page_offset; scalar_t__ page; } ;
struct mlx4_en_priv {int log_rx_info; } ;
typedef int gfp_t ;
struct TYPE_6__ {int addr; } ;
struct TYPE_4__ {scalar_t__ dma; scalar_t__ page; } ;


 scalar_t__ XDP_PACKET_HEADROOM ;
 int cpu_to_be64 (scalar_t__) ;
 scalar_t__ likely (int) ;
 int mlx4_en_alloc_frags (struct mlx4_en_priv*,struct mlx4_en_rx_ring*,struct mlx4_en_rx_desc*,struct mlx4_en_rx_alloc*,int ) ;

__attribute__((used)) static int mlx4_en_prepare_rx_desc(struct mlx4_en_priv *priv,
       struct mlx4_en_rx_ring *ring, int index,
       gfp_t gfp)
{
 struct mlx4_en_rx_desc *rx_desc = ring->buf +
  (index << ring->log_stride);
 struct mlx4_en_rx_alloc *frags = ring->rx_info +
     (index << priv->log_rx_info);
 if (likely(ring->page_cache.index > 0)) {

  if (!frags->page) {
   ring->page_cache.index--;
   frags->page = ring->page_cache.buf[ring->page_cache.index].page;
   frags->dma = ring->page_cache.buf[ring->page_cache.index].dma;
  }
  frags->page_offset = XDP_PACKET_HEADROOM;
  rx_desc->data[0].addr = cpu_to_be64(frags->dma +
          XDP_PACKET_HEADROOM);
  return 0;
 }

 return mlx4_en_alloc_frags(priv, ring, rx_desc, frags, gfp);
}
