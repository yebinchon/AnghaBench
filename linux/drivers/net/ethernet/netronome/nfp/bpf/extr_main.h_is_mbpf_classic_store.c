
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int code; } ;
struct nfp_insn_meta {TYPE_1__ insn; } ;


 scalar_t__ BPF_CLASS (int ) ;
 scalar_t__ BPF_MEM ;
 scalar_t__ BPF_MODE (int ) ;
 scalar_t__ BPF_ST ;

__attribute__((used)) static inline bool is_mbpf_classic_store(const struct nfp_insn_meta *meta)
{
 u8 code = meta->insn.code;

 return BPF_CLASS(code) == BPF_ST && BPF_MODE(code) == BPF_MEM;
}
