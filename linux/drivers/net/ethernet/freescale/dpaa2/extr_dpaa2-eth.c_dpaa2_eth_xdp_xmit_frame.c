
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xdp_frame {unsigned int headroom; void* data; int len; } ;
struct rtnl_link_stats64 {int tx_bytes; int tx_packets; int tx_errors; int tx_dropped; } ;
struct TYPE_3__ {struct device* parent; } ;
struct net_device {TYPE_1__ dev; } ;
struct dpaa2_fd {int dummy; } ;
struct TYPE_4__ {void* dma_size; struct xdp_frame* xdpf; } ;
struct dpaa2_eth_swa {TYPE_2__ xdp; int type; } ;
struct dpaa2_eth_priv {int (* enqueue ) (struct dpaa2_eth_priv*,struct dpaa2_eth_fq*,struct dpaa2_fd*,int ) ;struct dpaa2_eth_fq* fq; int percpu_extras; int percpu_stats; } ;
struct dpaa2_eth_fq {int dummy; } ;
struct dpaa2_eth_drv_stats {int tx_portal_busy; } ;
struct device {int dummy; } ;
typedef int fd ;
typedef int dma_addr_t ;


 int DMA_BIDIRECTIONAL ;
 int DPAA2_ETH_ENQUEUE_RETRIES ;
 int DPAA2_ETH_SWA_XDP ;
 int DPAA2_ETH_TX_BUF_ALIGN ;
 int EBUSY ;
 int EINVAL ;
 int ENOMEM ;
 int FD_CTRL_PTA ;
 void* PTR_ALIGN (void*,int) ;
 int dma_map_single (struct device*,void*,void*,int ) ;
 int dma_mapping_error (struct device*,int ) ;
 unsigned int dpaa2_eth_needed_headroom (struct dpaa2_eth_priv*,int *) ;
 size_t dpaa2_eth_queue_count (struct dpaa2_eth_priv*) ;
 scalar_t__ dpaa2_fd_get_len (struct dpaa2_fd*) ;
 int dpaa2_fd_set_addr (struct dpaa2_fd*,int ) ;
 int dpaa2_fd_set_ctrl (struct dpaa2_fd*,int ) ;
 int dpaa2_fd_set_format (struct dpaa2_fd*,int ) ;
 int dpaa2_fd_set_len (struct dpaa2_fd*,int ) ;
 int dpaa2_fd_set_offset (struct dpaa2_fd*,int) ;
 int dpaa2_fd_single ;
 int memset (struct dpaa2_fd*,int ,int) ;
 struct dpaa2_eth_priv* netdev_priv (struct net_device*) ;
 size_t smp_processor_id () ;
 int stub1 (struct dpaa2_eth_priv*,struct dpaa2_eth_fq*,struct dpaa2_fd*,int ) ;
 void* this_cpu_ptr (int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int dpaa2_eth_xdp_xmit_frame(struct net_device *net_dev,
        struct xdp_frame *xdpf)
{
 struct dpaa2_eth_priv *priv = netdev_priv(net_dev);
 struct device *dev = net_dev->dev.parent;
 struct rtnl_link_stats64 *percpu_stats;
 struct dpaa2_eth_drv_stats *percpu_extras;
 unsigned int needed_headroom;
 struct dpaa2_eth_swa *swa;
 struct dpaa2_eth_fq *fq;
 struct dpaa2_fd fd;
 void *buffer_start, *aligned_start;
 dma_addr_t addr;
 int err, i;




 needed_headroom = dpaa2_eth_needed_headroom(priv, ((void*)0));
 if (xdpf->headroom < needed_headroom)
  return -EINVAL;

 percpu_stats = this_cpu_ptr(priv->percpu_stats);
 percpu_extras = this_cpu_ptr(priv->percpu_extras);


 memset(&fd, 0, sizeof(fd));


 buffer_start = xdpf->data - needed_headroom;
 aligned_start = PTR_ALIGN(buffer_start - DPAA2_ETH_TX_BUF_ALIGN,
      DPAA2_ETH_TX_BUF_ALIGN);
 if (aligned_start >= xdpf->data - xdpf->headroom)
  buffer_start = aligned_start;

 swa = (struct dpaa2_eth_swa *)buffer_start;

 swa->type = DPAA2_ETH_SWA_XDP;
 swa->xdp.dma_size = xdpf->data + xdpf->len - buffer_start;
 swa->xdp.xdpf = xdpf;

 addr = dma_map_single(dev, buffer_start,
         swa->xdp.dma_size,
         DMA_BIDIRECTIONAL);
 if (unlikely(dma_mapping_error(dev, addr))) {
  percpu_stats->tx_dropped++;
  return -ENOMEM;
 }

 dpaa2_fd_set_addr(&fd, addr);
 dpaa2_fd_set_offset(&fd, xdpf->data - buffer_start);
 dpaa2_fd_set_len(&fd, xdpf->len);
 dpaa2_fd_set_format(&fd, dpaa2_fd_single);
 dpaa2_fd_set_ctrl(&fd, FD_CTRL_PTA);

 fq = &priv->fq[smp_processor_id() % dpaa2_eth_queue_count(priv)];
 for (i = 0; i < DPAA2_ETH_ENQUEUE_RETRIES; i++) {
  err = priv->enqueue(priv, fq, &fd, 0);
  if (err != -EBUSY)
   break;
 }
 percpu_extras->tx_portal_busy += i;
 if (unlikely(err < 0)) {
  percpu_stats->tx_errors++;

  return err;
 }

 percpu_stats->tx_packets++;
 percpu_stats->tx_bytes += dpaa2_fd_get_len(&fd);

 return 0;
}
