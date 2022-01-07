
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_oob_ops {int ooblen; scalar_t__ mode; int oobretlen; int oobbuf; } ;
struct docg3 {int oob_autoecc; int oob_write_buf; int oob_write_ofs; } ;
typedef int loff_t ;


 int DOC_LAYOUT_OOB_SIZE ;
 int EINVAL ;
 scalar_t__ MTD_OPS_AUTO_OOB ;
 int doc_fill_autooob (int ,int ) ;
 int doc_guess_autoecc (struct mtd_oob_ops*) ;
 int memcpy (int ,int ,int) ;

__attribute__((used)) static int doc_backup_oob(struct docg3 *docg3, loff_t to,
     struct mtd_oob_ops *ops)
{
 int ooblen = ops->ooblen, autoecc;

 if (ooblen != DOC_LAYOUT_OOB_SIZE)
  return -EINVAL;
 autoecc = doc_guess_autoecc(ops);
 if (autoecc < 0)
  return autoecc;

 docg3->oob_write_ofs = to;
 docg3->oob_autoecc = autoecc;
 if (ops->mode == MTD_OPS_AUTO_OOB) {
  doc_fill_autooob(docg3->oob_write_buf, ops->oobbuf);
  ops->oobretlen = 8;
 } else {
  memcpy(docg3->oob_write_buf, ops->oobbuf, DOC_LAYOUT_OOB_SIZE);
  ops->oobretlen = DOC_LAYOUT_OOB_SIZE;
 }
 return 0;
}
