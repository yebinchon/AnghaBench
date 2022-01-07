
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct iwl_trans_pcie {scalar_t__ rx_page_order; } ;
struct iwl_trans {int dummy; } ;
typedef int gfp_t ;


 int IWL_CRIT (struct iwl_trans*,char*) ;
 int IWL_DEBUG_INFO (struct iwl_trans*,char*,scalar_t__) ;
 struct iwl_trans_pcie* IWL_TRANS_GET_PCIE_TRANS (struct iwl_trans*) ;
 int __GFP_COMP ;
 int __GFP_NOWARN ;
 struct page* alloc_pages (int,scalar_t__) ;
 scalar_t__ net_ratelimit () ;

__attribute__((used)) static struct page *iwl_pcie_rx_alloc_page(struct iwl_trans *trans,
        gfp_t priority)
{
 struct iwl_trans_pcie *trans_pcie = IWL_TRANS_GET_PCIE_TRANS(trans);
 struct page *page;
 gfp_t gfp_mask = priority;

 if (trans_pcie->rx_page_order > 0)
  gfp_mask |= __GFP_COMP;


 page = alloc_pages(gfp_mask, trans_pcie->rx_page_order);
 if (!page) {
  if (net_ratelimit())
   IWL_DEBUG_INFO(trans, "alloc_pages failed, order: %d\n",
           trans_pcie->rx_page_order);




  if (!(gfp_mask & __GFP_NOWARN) && net_ratelimit())
   IWL_CRIT(trans,
     "Failed to alloc_pages\n");
  return ((void*)0);
 }
 return page;
}
