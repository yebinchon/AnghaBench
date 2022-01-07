
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hinic_api_cmd_chain {scalar_t__ prod_idx; } ;


 scalar_t__ MASKED_IDX (struct hinic_api_cmd_chain*,scalar_t__) ;

__attribute__((used)) static inline void cmd_chain_prod_idx_inc(struct hinic_api_cmd_chain *chain)
{
 chain->prod_idx = MASKED_IDX(chain, chain->prod_idx + 1);
}
