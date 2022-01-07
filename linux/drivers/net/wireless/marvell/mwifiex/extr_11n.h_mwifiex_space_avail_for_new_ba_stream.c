
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef scalar_t__ u32 ;
struct mwifiex_private {int tx_ba_stream_tbl_ptr; } ;
struct mwifiex_adapter {size_t priv_num; scalar_t__ fw_api_ver; int hw_dot_11n_dev_cap; struct mwifiex_private** priv; } ;


 scalar_t__ GETSUPP_TXBASTREAMS (int ) ;
 scalar_t__ MWIFIEX_FW_V15 ;
 scalar_t__ MWIFIEX_MAX_TX_BASTREAM_SUPPORTED ;
 scalar_t__ mwifiex_wmm_list_len (int *) ;

__attribute__((used)) static inline u8 mwifiex_space_avail_for_new_ba_stream(
     struct mwifiex_adapter *adapter)
{
 struct mwifiex_private *priv;
 u8 i;
 u32 ba_stream_num = 0, ba_stream_max;

 ba_stream_max = MWIFIEX_MAX_TX_BASTREAM_SUPPORTED;

 for (i = 0; i < adapter->priv_num; i++) {
  priv = adapter->priv[i];
  if (priv)
   ba_stream_num += mwifiex_wmm_list_len(
    &priv->tx_ba_stream_tbl_ptr);
 }

 if (adapter->fw_api_ver == MWIFIEX_FW_V15) {
  ba_stream_max =
          GETSUPP_TXBASTREAMS(adapter->hw_dot_11n_dev_cap);
  if (!ba_stream_max)
   ba_stream_max = MWIFIEX_MAX_TX_BASTREAM_SUPPORTED;
 }

 return ((ba_stream_num < ba_stream_max) ? 1 : 0);
}
