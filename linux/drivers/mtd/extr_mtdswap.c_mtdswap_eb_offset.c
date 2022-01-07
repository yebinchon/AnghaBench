
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct swap_eb {int dummy; } ;
struct mtdswap_dev {TYPE_1__* mtd; struct swap_eb* eb_data; } ;
typedef int loff_t ;
struct TYPE_2__ {int erasesize; } ;



__attribute__((used)) static loff_t mtdswap_eb_offset(struct mtdswap_dev *d, struct swap_eb *eb)
{
 return (loff_t)(eb - d->eb_data) * d->mtd->erasesize;
}
