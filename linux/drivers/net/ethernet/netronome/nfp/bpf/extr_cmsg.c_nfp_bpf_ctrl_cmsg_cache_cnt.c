
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct nfp_app_bpf {unsigned int cmsg_key_sz; unsigned int cmsg_val_sz; TYPE_3__* app; } ;
struct cmsg_req_map_op {int dummy; } ;
struct cmsg_reply_map_op {int dummy; } ;
struct TYPE_6__ {TYPE_2__* ctrl; } ;
struct TYPE_4__ {unsigned int mtu; } ;
struct TYPE_5__ {TYPE_1__ dp; } ;


 int NFP_BPF_MAP_CACHE_CNT ;
 unsigned int min3 (unsigned int,unsigned int,int ) ;

unsigned int nfp_bpf_ctrl_cmsg_cache_cnt(struct nfp_app_bpf *bpf)
{
 unsigned int mtu, req_max, reply_max, entry_sz;

 mtu = bpf->app->ctrl->dp.mtu;
 entry_sz = bpf->cmsg_key_sz + bpf->cmsg_val_sz;
 req_max = (mtu - sizeof(struct cmsg_req_map_op)) / entry_sz;
 reply_max = (mtu - sizeof(struct cmsg_reply_map_op)) / entry_sz;

 return min3(req_max, reply_max, NFP_BPF_MAP_CACHE_CNT);
}
