
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct onenand_chip {scalar_t__ page_shift; TYPE_1__* bufferram; } ;
struct mtd_info {struct onenand_chip* priv; } ;
typedef scalar_t__ loff_t ;
struct TYPE_2__ {scalar_t__ blockpage; } ;


 int MAX_BUFFERRAM ;

__attribute__((used)) static void onenand_invalidate_bufferram(struct mtd_info *mtd, loff_t addr,
  unsigned int len)
{
 struct onenand_chip *this = mtd->priv;
 int i;
 loff_t end_addr = addr + len;


 for (i = 0; i < MAX_BUFFERRAM; i++) {
  loff_t buf_addr = this->bufferram[i].blockpage << this->page_shift;
  if (buf_addr >= addr && buf_addr < end_addr)
   this->bufferram[i].blockpage = -1;
 }
}
