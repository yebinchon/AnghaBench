
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int code; } ;
struct nfp_insn_meta {TYPE_1__ insn; } ;


 int BPF_LDX ;
 int BPF_MEM ;
 int BPF_SIZE_MASK ;

__attribute__((used)) static inline bool is_mbpf_load(const struct nfp_insn_meta *meta)
{
 return (meta->insn.code & ~BPF_SIZE_MASK) == (BPF_LDX | BPF_MEM);
}
