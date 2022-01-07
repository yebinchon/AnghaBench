
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nand_bch_control {struct nand_bch_control* eccmask; struct nand_bch_control* errloc; int bch; } ;


 int free_bch (int ) ;
 int kfree (struct nand_bch_control*) ;

void nand_bch_free(struct nand_bch_control *nbc)
{
 if (nbc) {
  free_bch(nbc->bch);
  kfree(nbc->errloc);
  kfree(nbc->eccmask);
  kfree(nbc);
 }
}
