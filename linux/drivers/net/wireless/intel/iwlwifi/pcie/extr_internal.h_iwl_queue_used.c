
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_txq {int read_ptr; int write_ptr; } ;


 int iwl_pcie_get_cmd_index (struct iwl_txq const*,int) ;

__attribute__((used)) static inline bool iwl_queue_used(const struct iwl_txq *q, int i)
{
 int index = iwl_pcie_get_cmd_index(q, i);
 int r = iwl_pcie_get_cmd_index(q, q->read_ptr);
 int w = iwl_pcie_get_cmd_index(q, q->write_ptr);

 return w >= r ?
  (index >= r && index < w) :
  !(index < r && index >= w);
}
