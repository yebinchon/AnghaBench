
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mwifiex_private {int rx_seq; } ;


 int memset (int ,int,int) ;

__attribute__((used)) static inline void mwifiex_reset_11n_rx_seq_num(struct mwifiex_private *priv)
{
 memset(priv->rx_seq, 0xff, sizeof(priv->rx_seq));
}
