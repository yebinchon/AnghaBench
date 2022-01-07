
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_app_bpf {unsigned int cmsg_key_sz; unsigned int cmsg_val_sz; } ;
struct cmsg_reply_map_op {void* data; } ;



__attribute__((used)) static void *
nfp_bpf_ctrl_reply_val(struct nfp_app_bpf *bpf, struct cmsg_reply_map_op *reply,
         unsigned int n)
{
 return &reply->data[bpf->cmsg_key_sz * (n + 1) + bpf->cmsg_val_sz * n];
}
