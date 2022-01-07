
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_app_bpf {int abi_version; } ;



__attribute__((used)) static void nfp_bpf_init_capabilities(struct nfp_app_bpf *bpf)
{
 bpf->abi_version = 2;
}
