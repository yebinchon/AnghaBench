
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_prog {scalar_t__ error; } ;


 int WARN_ON_ONCE (int) ;
 unsigned int nfp_prog_current_offset (struct nfp_prog*) ;

__attribute__((used)) static bool
nfp_prog_confirm_current_offset(struct nfp_prog *nfp_prog, unsigned int off)
{




 if (nfp_prog->error)
  return 1;
 return !WARN_ON_ONCE(nfp_prog_current_offset(nfp_prog) != off);
}
