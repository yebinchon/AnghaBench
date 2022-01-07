
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct dpaa2_eth_priv {int net_dev; int bpid; } ;


 int DPAA2_ETH_BUFS_PER_CMD ;
 int dpaa2_io_service_acquire (int *,int ,int *,int) ;
 int free_bufs (struct dpaa2_eth_priv*,int *,int) ;
 int netdev_err (int ,char*) ;

__attribute__((used)) static void drain_bufs(struct dpaa2_eth_priv *priv, int count)
{
 u64 buf_array[DPAA2_ETH_BUFS_PER_CMD];
 int ret;

 do {
  ret = dpaa2_io_service_acquire(((void*)0), priv->bpid,
            buf_array, count);
  if (ret < 0) {
   netdev_err(priv->net_dev, "dpaa2_io_service_acquire() failed\n");
   return;
  }
  free_bufs(priv, buf_array, ret);
 } while (ret);
}
