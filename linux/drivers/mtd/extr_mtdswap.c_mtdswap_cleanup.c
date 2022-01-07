
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtdswap_dev {int page_buf; int oob_buf; int page_data; int revmap; int eb_data; } ;


 int kfree (int ) ;
 int vfree (int ) ;

__attribute__((used)) static void mtdswap_cleanup(struct mtdswap_dev *d)
{
 vfree(d->eb_data);
 vfree(d->revmap);
 vfree(d->page_data);
 kfree(d->oob_buf);
 kfree(d->page_buf);
}
