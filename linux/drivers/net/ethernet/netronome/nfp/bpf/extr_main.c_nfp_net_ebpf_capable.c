
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfp_net {int cap; TYPE_1__* app; } ;
struct nfp_app_bpf {scalar_t__ abi_version; } ;
struct TYPE_2__ {struct nfp_app_bpf* priv; } ;


 int NFP_NET_CFG_BPF_ABI ;
 int NFP_NET_CFG_CTRL_BPF ;
 scalar_t__ nn_readb (struct nfp_net*,int ) ;

__attribute__((used)) static bool nfp_net_ebpf_capable(struct nfp_net *nn)
{







 return 0;

}
