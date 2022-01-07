
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct iwl_txq {int n_window; } ;



__attribute__((used)) static inline u16 iwl_pcie_get_cmd_index(const struct iwl_txq *q, u32 index)
{
 return index & (q->n_window - 1);
}
