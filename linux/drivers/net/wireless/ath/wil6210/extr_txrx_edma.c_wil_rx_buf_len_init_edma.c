
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wil6210_priv {int rx_buf_len; } ;


 int WIL_EDMA_RX_BUF_LEN_DEFAULT ;
 int WIL_MAX_ETH_MTU ;
 scalar_t__ rx_large_buf ;

__attribute__((used)) static void wil_rx_buf_len_init_edma(struct wil6210_priv *wil)
{

 wil->rx_buf_len = rx_large_buf ?
  WIL_MAX_ETH_MTU : WIL_EDMA_RX_BUF_LEN_DEFAULT;
}
