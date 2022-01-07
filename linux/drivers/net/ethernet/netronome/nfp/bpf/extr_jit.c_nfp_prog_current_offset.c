
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_prog {unsigned int prog_len; } ;



__attribute__((used)) static unsigned int nfp_prog_current_offset(struct nfp_prog *nfp_prog)
{
 return nfp_prog->prog_len;
}
