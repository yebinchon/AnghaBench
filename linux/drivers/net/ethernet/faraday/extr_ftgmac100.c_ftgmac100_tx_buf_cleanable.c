
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ftgmac100 {scalar_t__ tx_pointer; scalar_t__ tx_clean_pointer; } ;



__attribute__((used)) static bool ftgmac100_tx_buf_cleanable(struct ftgmac100 *priv)
{
 return priv->tx_pointer != priv->tx_clean_pointer;
}
