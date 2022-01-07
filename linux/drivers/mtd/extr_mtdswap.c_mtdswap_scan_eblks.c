
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct swap_eb {int flags; } ;
struct mtdswap_dev {unsigned int eblks; struct swap_eb* eb_data; } ;


 int EBLOCK_BAD ;
 unsigned int EBLOCK_IDX_SHIFT ;
 int EBLOCK_READERR ;
 unsigned int MTDSWAP_CLEAN ;
 unsigned int MTDSWAP_DIRTY ;
 unsigned int MTDSWAP_FAILING ;
 int MTDSWAP_SCANNED_BAD ;



 int mtdswap_check_counts (struct mtdswap_dev*) ;
 int mtdswap_rb_add (struct mtdswap_dev*,struct swap_eb*,unsigned int) ;
 int mtdswap_read_markers (struct mtdswap_dev*,struct swap_eb*) ;

__attribute__((used)) static void mtdswap_scan_eblks(struct mtdswap_dev *d)
{
 int status;
 unsigned int i, idx;
 struct swap_eb *eb;

 for (i = 0; i < d->eblks; i++) {
  eb = d->eb_data + i;

  status = mtdswap_read_markers(d, eb);
  if (status < 0)
   eb->flags |= EBLOCK_READERR;
  else if (status == MTDSWAP_SCANNED_BAD) {
   eb->flags |= EBLOCK_BAD;
   continue;
  }

  switch (status) {
  case 129:
   idx = MTDSWAP_CLEAN;
   break;
  case 128:
  case 130:
   idx = MTDSWAP_DIRTY;
   break;
  default:
   idx = MTDSWAP_FAILING;
  }

  eb->flags |= (idx << EBLOCK_IDX_SHIFT);
 }

 mtdswap_check_counts(d);

 for (i = 0; i < d->eblks; i++) {
  eb = d->eb_data + i;

  if (eb->flags & EBLOCK_BAD)
   continue;

  idx = eb->flags >> EBLOCK_IDX_SHIFT;
  mtdswap_rb_add(d, eb, idx);
 }
}
