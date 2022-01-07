
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct e1000_ps_page {scalar_t__ page; } ;
struct e1000_buffer {struct e1000_ps_page* ps_pages; } ;
struct e1000_adapter {int rx_ps_pages; } ;


 int DUMP_PREFIX_ADDRESS ;
 int KERN_INFO ;
 int PAGE_SIZE ;
 int page_address (scalar_t__) ;
 int pr_info (char*,int) ;
 int print_hex_dump (int ,char*,int ,int,int,int ,int ,int) ;

__attribute__((used)) static void e1000e_dump_ps_pages(struct e1000_adapter *adapter,
     struct e1000_buffer *bi)
{
 int i;
 struct e1000_ps_page *ps_page;

 for (i = 0; i < adapter->rx_ps_pages; i++) {
  ps_page = &bi->ps_pages[i];

  if (ps_page->page) {
   pr_info("packet dump for ps_page %d:\n", i);
   print_hex_dump(KERN_INFO, "", DUMP_PREFIX_ADDRESS,
           16, 1, page_address(ps_page->page),
           PAGE_SIZE, 1);
  }
 }
}
