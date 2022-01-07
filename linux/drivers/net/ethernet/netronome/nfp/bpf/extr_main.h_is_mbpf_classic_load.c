
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int code; } ;
struct nfp_insn_meta {TYPE_1__ insn; } ;


 scalar_t__ BPF_ABS ;
 scalar_t__ BPF_CLASS (int ) ;
 scalar_t__ BPF_IND ;
 scalar_t__ BPF_LD ;
 scalar_t__ BPF_MODE (int ) ;

__attribute__((used)) static inline bool is_mbpf_classic_load(const struct nfp_insn_meta *meta)
{
 u8 code = meta->insn.code;

 return BPF_CLASS(code) == BPF_LD &&
        (BPF_MODE(code) == BPF_ABS || BPF_MODE(code) == BPF_IND);
}
