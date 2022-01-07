
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ type; scalar_t__ id; scalar_t__ off; } ;
struct TYPE_3__ {scalar_t__ off; } ;
struct nfp_insn_meta {TYPE_2__ ptr; TYPE_1__ insn; } ;
struct bpf_insn {scalar_t__ off; } ;
typedef scalar_t__ s16 ;



__attribute__((used)) static bool
cross_mem_access(struct bpf_insn *ld, struct nfp_insn_meta *head_ld_meta,
   struct nfp_insn_meta *head_st_meta)
{
 s16 head_ld_off, head_st_off, ld_off;


 if (head_ld_meta->ptr.type != head_st_meta->ptr.type)
  return 0;


 if (head_ld_meta->ptr.id != head_st_meta->ptr.id)
  return 1;




 head_ld_off = head_ld_meta->insn.off + head_ld_meta->ptr.off;
 head_st_off = head_st_meta->insn.off + head_st_meta->ptr.off;
 ld_off = ld->off + head_ld_meta->ptr.off;


 if (ld_off > head_ld_off &&
     head_ld_off < head_st_off && ld_off >= head_st_off)
  return 1;


 if (ld_off < head_ld_off &&
     head_ld_off > head_st_off && ld_off <= head_st_off)
  return 1;

 return 0;
}
