
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct ftmac100_rxdes {unsigned int rxdes3; } ;



__attribute__((used)) static void ftmac100_rxdes_set_page(struct ftmac100_rxdes *rxdes, struct page *page)
{
 rxdes->rxdes3 = (unsigned int)page;
}
