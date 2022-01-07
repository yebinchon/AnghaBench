
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct ftmac100_rxdes {scalar_t__ rxdes3; } ;



__attribute__((used)) static struct page *ftmac100_rxdes_get_page(struct ftmac100_rxdes *rxdes)
{
 return (struct page *)rxdes->rxdes3;
}
