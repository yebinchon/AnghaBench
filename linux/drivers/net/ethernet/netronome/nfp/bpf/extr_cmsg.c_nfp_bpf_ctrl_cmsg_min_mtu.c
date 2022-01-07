
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_app_bpf {int dummy; } ;


 unsigned int max (int ,int ) ;
 int nfp_bpf_cmsg_map_reply_size (struct nfp_app_bpf*,int) ;
 int nfp_bpf_cmsg_map_req_size (struct nfp_app_bpf*,int) ;

unsigned int nfp_bpf_ctrl_cmsg_min_mtu(struct nfp_app_bpf *bpf)
{
 return max(nfp_bpf_cmsg_map_req_size(bpf, 1),
     nfp_bpf_cmsg_map_reply_size(bpf, 1));
}
