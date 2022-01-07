
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netdev_bpf {int command; } ;
struct net_device {int dummy; } ;
struct cpsw_priv {int xdpi; } ;


 int EINVAL ;


 int cpsw_xdp_prog_setup (struct cpsw_priv*,struct netdev_bpf*) ;
 struct cpsw_priv* netdev_priv (struct net_device*) ;
 int xdp_attachment_query (int *,struct netdev_bpf*) ;

__attribute__((used)) static int cpsw_ndo_bpf(struct net_device *ndev, struct netdev_bpf *bpf)
{
 struct cpsw_priv *priv = netdev_priv(ndev);

 switch (bpf->command) {
 case 128:
  return cpsw_xdp_prog_setup(priv, bpf);

 case 129:
  return xdp_attachment_query(&priv->xdpi, bpf);

 default:
  return -EINVAL;
 }
}
