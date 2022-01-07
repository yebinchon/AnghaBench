
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ type; } ;
struct nfp_insn_meta {TYPE_1__ ptr; } ;


 scalar_t__ PTR_TO_PACKET ;
 scalar_t__ is_mbpf_load (struct nfp_insn_meta const*) ;

__attribute__((used)) static inline bool is_mbpf_load_pkt(const struct nfp_insn_meta *meta)
{
 return is_mbpf_load(meta) && meta->ptr.type == PTR_TO_PACKET;
}
