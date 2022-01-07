
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nfp_app_bpf {int dummy; } ;


 struct sk_buff* nfp_bpf_cmsg_alloc (struct nfp_app_bpf*,int ) ;
 int nfp_bpf_cmsg_map_req_size (struct nfp_app_bpf*,unsigned int) ;

__attribute__((used)) static struct sk_buff *
nfp_bpf_cmsg_map_req_alloc(struct nfp_app_bpf *bpf, unsigned int n)
{
 return nfp_bpf_cmsg_alloc(bpf, nfp_bpf_cmsg_map_req_size(bpf, n));
}
