
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_host_cmd {int _rx_page_order; int _rx_page_addr; } ;


 int free_pages (int ,int ) ;

__attribute__((used)) static inline void iwl_free_resp(struct iwl_host_cmd *cmd)
{
 free_pages(cmd->_rx_page_addr, cmd->_rx_page_order);
}
