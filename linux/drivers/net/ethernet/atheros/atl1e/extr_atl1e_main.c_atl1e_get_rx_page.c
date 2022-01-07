
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct atl1e_rx_page_desc {size_t rx_using; struct atl1e_rx_page* rx_page; } ;
struct atl1e_rx_page {int dummy; } ;
struct TYPE_2__ {scalar_t__ rx_page_desc; } ;
struct atl1e_adapter {TYPE_1__ rx_ring; } ;



__attribute__((used)) static struct atl1e_rx_page *atl1e_get_rx_page(struct atl1e_adapter *adapter,
            u8 que)
{
 struct atl1e_rx_page_desc *rx_page_desc =
  (struct atl1e_rx_page_desc *) adapter->rx_ring.rx_page_desc;
 u8 rx_using = rx_page_desc[que].rx_using;

 return &(rx_page_desc[que].rx_page[rx_using]);
}
