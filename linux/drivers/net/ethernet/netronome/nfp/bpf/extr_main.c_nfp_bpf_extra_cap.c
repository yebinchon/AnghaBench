
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_net {int dummy; } ;
struct nfp_app {int dummy; } ;


 scalar_t__ nfp_net_ebpf_capable (struct nfp_net*) ;

__attribute__((used)) static const char *nfp_bpf_extra_cap(struct nfp_app *app, struct nfp_net *nn)
{
 return nfp_net_ebpf_capable(nn) ? "BPF" : "";
}
