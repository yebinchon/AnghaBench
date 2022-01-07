
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int code; } ;
struct nfp_insn_meta {TYPE_1__ insn; } ;


 int BPF_CLASS (int ) ;

__attribute__((used)) static inline u8 mbpf_class(const struct nfp_insn_meta *meta)
{
 return BPF_CLASS(meta->insn.code);
}
