
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msb_data {int * card; int cache; int lba_to_pba_table; int used_blocks_bitmap; int boot_page; } ;


 int kfree (int ) ;

__attribute__((used)) static void msb_data_clear(struct msb_data *msb)
{
 kfree(msb->boot_page);
 kfree(msb->used_blocks_bitmap);
 kfree(msb->lba_to_pba_table);
 kfree(msb->cache);
 msb->card = ((void*)0);
}
