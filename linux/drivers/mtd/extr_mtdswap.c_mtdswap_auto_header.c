
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int version; scalar_t__ nr_badpages; scalar_t__ last_page; } ;
union swap_header {TYPE_1__ info; } ;
struct mtdswap_dev {TYPE_2__* mbd_dev; } ;
struct TYPE_4__ {scalar_t__ size; } ;


 int PAGE_SIZE ;
 int memcpy (char*,char*,int) ;
 int memset (char*,int ,int) ;

__attribute__((used)) static int mtdswap_auto_header(struct mtdswap_dev *d, char *buf)
{
 union swap_header *hd = (union swap_header *)(buf);

 memset(buf, 0, PAGE_SIZE - 10);

 hd->info.version = 1;
 hd->info.last_page = d->mbd_dev->size - 1;
 hd->info.nr_badpages = 0;

 memcpy(buf + PAGE_SIZE - 10, "SWAPSPACE2", 10);

 return 0;
}
