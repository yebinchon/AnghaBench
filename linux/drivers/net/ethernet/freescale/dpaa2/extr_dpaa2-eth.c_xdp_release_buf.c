
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dpaa2_eth_priv {int bpid; } ;
struct TYPE_2__ {scalar_t__ drop_cnt; int * drop_bufs; } ;
struct dpaa2_eth_channel {TYPE_1__ xdp; int buf_count; int dpio; } ;
typedef int dma_addr_t ;


 scalar_t__ DPAA2_ETH_BUFS_PER_CMD ;
 int EBUSY ;
 int cpu_relax () ;
 int dpaa2_io_service_release (int ,int ,int *,scalar_t__) ;
 int free_bufs (struct dpaa2_eth_priv*,int *,scalar_t__) ;

__attribute__((used)) static void xdp_release_buf(struct dpaa2_eth_priv *priv,
       struct dpaa2_eth_channel *ch,
       dma_addr_t addr)
{
 int err;

 ch->xdp.drop_bufs[ch->xdp.drop_cnt++] = addr;
 if (ch->xdp.drop_cnt < DPAA2_ETH_BUFS_PER_CMD)
  return;

 while ((err = dpaa2_io_service_release(ch->dpio, priv->bpid,
            ch->xdp.drop_bufs,
            ch->xdp.drop_cnt)) == -EBUSY)
  cpu_relax();

 if (err) {
  free_bufs(priv, ch->xdp.drop_bufs, ch->xdp.drop_cnt);
  ch->buf_count -= ch->xdp.drop_cnt;
 }

 ch->xdp.drop_cnt = 0;
}
