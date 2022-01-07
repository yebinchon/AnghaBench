
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_app_bpf {int bpf_dev; } ;
struct nfp_app {struct nfp_app_bpf* priv; } ;
struct net_device {int dummy; } ;


 int bpf_offload_dev_netdev_register (int ,struct net_device*) ;

__attribute__((used)) static int nfp_bpf_ndo_init(struct nfp_app *app, struct net_device *netdev)
{
 struct nfp_app_bpf *bpf = app->priv;

 return bpf_offload_dev_netdev_register(bpf->bpf_dev, netdev);
}
