
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_app_bpf {int bpf_dev; } ;
struct nfp_app {struct nfp_app_bpf* priv; } ;
struct net_device {int dummy; } ;


 int bpf_offload_dev_netdev_unregister (int ,struct net_device*) ;

__attribute__((used)) static void nfp_bpf_ndo_uninit(struct nfp_app *app, struct net_device *netdev)
{
 struct nfp_app_bpf *bpf = app->priv;

 bpf_offload_dev_netdev_unregister(bpf->bpf_dev, netdev);
}
