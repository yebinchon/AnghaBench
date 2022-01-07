
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtdswap_dev {scalar_t__ pages_per_eblk; } ;


 scalar_t__ mtdswap_free_page_cnt (struct mtdswap_dev*) ;

__attribute__((used)) static unsigned int mtdswap_enough_free_pages(struct mtdswap_dev *d)
{
 return mtdswap_free_page_cnt(d) > d->pages_per_eblk;
}
