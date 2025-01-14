
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int mtu; } ;
struct dpaa2_eth_priv {int num_channels; struct dpaa2_eth_channel** channel; int xdp_prog; } ;
struct TYPE_2__ {int prog; } ;
struct dpaa2_eth_channel {TYPE_1__ xdp; } ;
struct bpf_prog {int dummy; } ;


 int EINVAL ;
 scalar_t__ IS_ERR (struct bpf_prog*) ;
 int PTR_ERR (struct bpf_prog*) ;
 struct bpf_prog* bpf_prog_add (struct bpf_prog*,int) ;
 int bpf_prog_put (struct bpf_prog*) ;
 int bpf_prog_sub (struct bpf_prog*,int) ;
 int dpaa2_eth_open (struct net_device*) ;
 int dpaa2_eth_stop (struct net_device*) ;
 struct dpaa2_eth_priv* netdev_priv (struct net_device*) ;
 int netif_running (struct net_device*) ;
 int set_rx_mfl (struct dpaa2_eth_priv*,int ,int) ;
 int update_rx_buffer_headroom (struct dpaa2_eth_priv*,int) ;
 struct bpf_prog* xchg (int *,struct bpf_prog*) ;
 int xdp_mtu_valid (struct dpaa2_eth_priv*,int ) ;

__attribute__((used)) static int setup_xdp(struct net_device *dev, struct bpf_prog *prog)
{
 struct dpaa2_eth_priv *priv = netdev_priv(dev);
 struct dpaa2_eth_channel *ch;
 struct bpf_prog *old;
 bool up, need_update;
 int i, err;

 if (prog && !xdp_mtu_valid(priv, dev->mtu))
  return -EINVAL;

 if (prog) {
  prog = bpf_prog_add(prog, priv->num_channels);
  if (IS_ERR(prog))
   return PTR_ERR(prog);
 }

 up = netif_running(dev);
 need_update = (!!priv->xdp_prog != !!prog);

 if (up)
  dpaa2_eth_stop(dev);






 if (need_update) {
  err = set_rx_mfl(priv, dev->mtu, !!prog);
  if (err)
   goto out_err;
  err = update_rx_buffer_headroom(priv, !!prog);
  if (err)
   goto out_err;
 }

 old = xchg(&priv->xdp_prog, prog);
 if (old)
  bpf_prog_put(old);

 for (i = 0; i < priv->num_channels; i++) {
  ch = priv->channel[i];
  old = xchg(&ch->xdp.prog, prog);
  if (old)
   bpf_prog_put(old);
 }

 if (up) {
  err = dpaa2_eth_open(dev);
  if (err)
   return err;
 }

 return 0;

out_err:
 if (prog)
  bpf_prog_sub(prog, priv->num_channels);
 if (up)
  dpaa2_eth_open(dev);

 return err;
}
