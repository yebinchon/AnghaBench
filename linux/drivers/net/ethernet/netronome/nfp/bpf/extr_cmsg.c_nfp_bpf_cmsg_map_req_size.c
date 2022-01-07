
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_app_bpf {unsigned int cmsg_key_sz; unsigned int cmsg_val_sz; } ;
struct cmsg_req_map_op {int dummy; } ;



__attribute__((used)) static unsigned int
nfp_bpf_cmsg_map_req_size(struct nfp_app_bpf *bpf, unsigned int n)
{
 unsigned int size;

 size = sizeof(struct cmsg_req_map_op);
 size += (bpf->cmsg_key_sz + bpf->cmsg_val_sz) * n;

 return size;
}
