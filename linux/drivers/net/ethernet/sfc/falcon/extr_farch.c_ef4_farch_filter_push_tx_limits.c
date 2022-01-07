
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ef4_nic {struct ef4_farch_filter_state* filter_state; } ;
struct ef4_farch_filter_table {scalar_t__* search_limit; scalar_t__ size; } ;
struct ef4_farch_filter_state {struct ef4_farch_filter_table* table; } ;
typedef int ef4_oword_t ;


 scalar_t__ EF4_FARCH_FILTER_CTL_SRCH_FUDGE_FULL ;
 scalar_t__ EF4_FARCH_FILTER_CTL_SRCH_FUDGE_WILD ;
 size_t EF4_FARCH_FILTER_MAC_FULL ;
 size_t EF4_FARCH_FILTER_MAC_WILD ;
 size_t EF4_FARCH_FILTER_TABLE_TX_MAC ;
 int EF4_SET_OWORD_FIELD (int ,int ,scalar_t__) ;
 int FRF_CZ_TX_ETH_FILTER_FULL_SEARCH_RANGE ;
 int FRF_CZ_TX_ETH_FILTER_WILD_SEARCH_RANGE ;
 int FR_AZ_TX_CFG ;
 int ef4_reado (struct ef4_nic*,int *,int ) ;
 int ef4_writeo (struct ef4_nic*,int *,int ) ;

__attribute__((used)) static void ef4_farch_filter_push_tx_limits(struct ef4_nic *efx)
{
 struct ef4_farch_filter_state *state = efx->filter_state;
 struct ef4_farch_filter_table *table;
 ef4_oword_t tx_cfg;

 ef4_reado(efx, &tx_cfg, FR_AZ_TX_CFG);

 table = &state->table[EF4_FARCH_FILTER_TABLE_TX_MAC];
 if (table->size) {
  EF4_SET_OWORD_FIELD(
   tx_cfg, FRF_CZ_TX_ETH_FILTER_FULL_SEARCH_RANGE,
   table->search_limit[EF4_FARCH_FILTER_MAC_FULL] +
   EF4_FARCH_FILTER_CTL_SRCH_FUDGE_FULL);
  EF4_SET_OWORD_FIELD(
   tx_cfg, FRF_CZ_TX_ETH_FILTER_WILD_SEARCH_RANGE,
   table->search_limit[EF4_FARCH_FILTER_MAC_WILD] +
   EF4_FARCH_FILTER_CTL_SRCH_FUDGE_WILD);
 }

 ef4_writeo(efx, &tx_cfg, FR_AZ_TX_CFG);
}
