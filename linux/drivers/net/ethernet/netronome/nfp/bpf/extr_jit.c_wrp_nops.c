
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_prog {int dummy; } ;


 int emit_nop (struct nfp_prog*) ;

__attribute__((used)) static void wrp_nops(struct nfp_prog *nfp_prog, unsigned int count)
{
 while (count--)
  emit_nop(nfp_prog);
}
