
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_rx_cmd_buffer {int _rx_page_order; int _page; } ;


 int __free_pages (int ,int ) ;

__attribute__((used)) static inline void iwl_free_rxb(struct iwl_rx_cmd_buffer *r)
{
 __free_pages(r->_page, r->_rx_page_order);
}
