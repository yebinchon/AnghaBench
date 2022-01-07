
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_net {int dummy; } ;
struct nfp_app {int dummy; } ;
struct net_device {int dummy; } ;
typedef enum tc_setup_type { ____Placeholder_tc_setup_type } tc_setup_type ;


 int EOPNOTSUPP ;

 int flow_block_cb_setup_simple (void*,int *,int ,struct nfp_net*,struct nfp_net*,int) ;
 struct nfp_net* netdev_priv (struct net_device*) ;
 int nfp_bpf_block_cb_list ;
 int nfp_bpf_setup_tc_block_cb ;

__attribute__((used)) static int nfp_bpf_setup_tc(struct nfp_app *app, struct net_device *netdev,
       enum tc_setup_type type, void *type_data)
{
 struct nfp_net *nn = netdev_priv(netdev);

 switch (type) {
 case 128:
  return flow_block_cb_setup_simple(type_data,
        &nfp_bpf_block_cb_list,
        nfp_bpf_setup_tc_block_cb,
        nn, nn, 1);
 default:
  return -EOPNOTSUPP;
 }
}
