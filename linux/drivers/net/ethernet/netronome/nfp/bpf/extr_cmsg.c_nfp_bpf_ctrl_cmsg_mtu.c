
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_app_bpf {int dummy; } ;


 int NFP_BPF_MAP_CACHE_CNT ;
 int NFP_NET_DEFAULT_MTU ;
 unsigned int max3 (int ,int ,int ) ;
 int nfp_bpf_cmsg_map_reply_size (struct nfp_app_bpf*,int ) ;
 int nfp_bpf_cmsg_map_req_size (struct nfp_app_bpf*,int ) ;

unsigned int nfp_bpf_ctrl_cmsg_mtu(struct nfp_app_bpf *bpf)
{
 return max3(NFP_NET_DEFAULT_MTU,
      nfp_bpf_cmsg_map_req_size(bpf, NFP_BPF_MAP_CACHE_CNT),
      nfp_bpf_cmsg_map_reply_size(bpf, NFP_BPF_MAP_CACHE_CNT));
}
