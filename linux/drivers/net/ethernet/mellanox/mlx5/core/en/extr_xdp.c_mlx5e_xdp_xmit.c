
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct xdp_frame {int len; int data; } ;
struct net_device {int dummy; } ;
struct TYPE_8__ {scalar_t__ wqe; } ;
struct mlx5e_xdpsq {TYPE_4__ mpwqe; int pdev; int (* xmit_xdp_frame ) (struct mlx5e_xdpsq*,struct mlx5e_xdp_xmit_data*,struct mlx5e_xdp_info*,int ) ;} ;
struct mlx5e_xdp_xmit_data {int len; int dma_addr; int data; } ;
struct TYPE_7__ {int dma_addr; struct xdp_frame* xdpf; } ;
struct mlx5e_xdp_info {TYPE_3__ frame; int mode; } ;
struct TYPE_6__ {int num; TYPE_1__** c; } ;
struct mlx5e_priv {TYPE_2__ channels; } ;
struct TYPE_5__ {struct mlx5e_xdpsq xdpsq; } ;


 int DMA_TO_DEVICE ;
 int EINVAL ;
 int ENETDOWN ;
 int ENXIO ;
 int MLX5E_XDP_XMIT_MODE_FRAME ;
 int XDP_XMIT_FLAGS_MASK ;
 int XDP_XMIT_FLUSH ;
 int dma_map_single (int ,int ,int ,int ) ;
 int dma_mapping_error (int ,int ) ;
 int dma_unmap_single (int ,int ,int ,int ) ;
 int mlx5e_xdp_mpwqe_complete (struct mlx5e_xdpsq*) ;
 int mlx5e_xdp_tx_is_enabled (struct mlx5e_priv*) ;
 int mlx5e_xmit_xdp_doorbell (struct mlx5e_xdpsq*) ;
 struct mlx5e_priv* netdev_priv (struct net_device*) ;
 int smp_processor_id () ;
 int stub1 (struct mlx5e_xdpsq*,struct mlx5e_xdp_xmit_data*,struct mlx5e_xdp_info*,int ) ;
 scalar_t__ unlikely (int) ;
 int xdp_return_frame_rx_napi (struct xdp_frame*) ;

int mlx5e_xdp_xmit(struct net_device *dev, int n, struct xdp_frame **frames,
     u32 flags)
{
 struct mlx5e_priv *priv = netdev_priv(dev);
 struct mlx5e_xdpsq *sq;
 int drops = 0;
 int sq_num;
 int i;


 if (unlikely(!mlx5e_xdp_tx_is_enabled(priv)))
  return -ENETDOWN;

 if (unlikely(flags & ~XDP_XMIT_FLAGS_MASK))
  return -EINVAL;

 sq_num = smp_processor_id();

 if (unlikely(sq_num >= priv->channels.num))
  return -ENXIO;

 sq = &priv->channels.c[sq_num]->xdpsq;

 for (i = 0; i < n; i++) {
  struct xdp_frame *xdpf = frames[i];
  struct mlx5e_xdp_xmit_data xdptxd;
  struct mlx5e_xdp_info xdpi;

  xdptxd.data = xdpf->data;
  xdptxd.len = xdpf->len;
  xdptxd.dma_addr = dma_map_single(sq->pdev, xdptxd.data,
       xdptxd.len, DMA_TO_DEVICE);

  if (unlikely(dma_mapping_error(sq->pdev, xdptxd.dma_addr))) {
   xdp_return_frame_rx_napi(xdpf);
   drops++;
   continue;
  }

  xdpi.mode = MLX5E_XDP_XMIT_MODE_FRAME;
  xdpi.frame.xdpf = xdpf;
  xdpi.frame.dma_addr = xdptxd.dma_addr;

  if (unlikely(!sq->xmit_xdp_frame(sq, &xdptxd, &xdpi, 0))) {
   dma_unmap_single(sq->pdev, xdptxd.dma_addr,
      xdptxd.len, DMA_TO_DEVICE);
   xdp_return_frame_rx_napi(xdpf);
   drops++;
  }
 }

 if (flags & XDP_XMIT_FLUSH) {
  if (sq->mpwqe.wqe)
   mlx5e_xdp_mpwqe_complete(sq);
  mlx5e_xmit_xdp_doorbell(sq);
 }

 return n - drops;
}
