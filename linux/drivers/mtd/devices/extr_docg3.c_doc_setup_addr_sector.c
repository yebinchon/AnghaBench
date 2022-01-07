
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct docg3 {int dummy; } ;


 int doc_delay (struct docg3*,int) ;
 int doc_flash_address (struct docg3*,int) ;

__attribute__((used)) static void doc_setup_addr_sector(struct docg3 *docg3, int sector)
{
 doc_delay(docg3, 1);
 doc_flash_address(docg3, sector & 0xff);
 doc_flash_address(docg3, (sector >> 8) & 0xff);
 doc_flash_address(docg3, (sector >> 16) & 0xff);
 doc_delay(docg3, 1);
}
