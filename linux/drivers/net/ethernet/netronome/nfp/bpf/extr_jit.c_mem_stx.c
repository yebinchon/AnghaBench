
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nfp_prog {int dummy; } ;
struct TYPE_3__ {scalar_t__ value; } ;
struct TYPE_4__ {scalar_t__ type; TYPE_1__ var_off; scalar_t__ off; } ;
struct nfp_insn_meta {TYPE_2__ ptr; } ;


 int EOPNOTSUPP ;
 scalar_t__ PTR_TO_PACKET ;
 scalar_t__ PTR_TO_STACK ;
 int mem_stx_data (struct nfp_prog*,struct nfp_insn_meta*,unsigned int) ;
 int mem_stx_stack (struct nfp_prog*,struct nfp_insn_meta*,unsigned int,scalar_t__) ;

__attribute__((used)) static int
mem_stx(struct nfp_prog *nfp_prog, struct nfp_insn_meta *meta,
 unsigned int size)
{
 if (meta->ptr.type == PTR_TO_PACKET)
  return mem_stx_data(nfp_prog, meta, size);

 if (meta->ptr.type == PTR_TO_STACK)
  return mem_stx_stack(nfp_prog, meta, size,
         meta->ptr.off + meta->ptr.var_off.value);

 return -EOPNOTSUPP;
}
