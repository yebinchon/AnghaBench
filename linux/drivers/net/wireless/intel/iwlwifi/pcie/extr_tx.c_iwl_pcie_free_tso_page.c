
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {scalar_t__ cb; } ;
struct page {int dummy; } ;
struct iwl_trans_pcie {int page_offs; } ;


 int __free_page (struct page*) ;

void iwl_pcie_free_tso_page(struct iwl_trans_pcie *trans_pcie,
       struct sk_buff *skb)
{
 struct page **page_ptr;

 page_ptr = (void *)((u8 *)skb->cb + trans_pcie->page_offs);

 if (*page_ptr) {
  __free_page(*page_ptr);
  *page_ptr = ((void*)0);
 }
}
