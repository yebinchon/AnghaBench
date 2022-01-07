
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ftmac100 {int tx_clean_pointer; } ;


 int ftmac100_next_tx_pointer (int ) ;

__attribute__((used)) static void ftmac100_tx_clean_pointer_advance(struct ftmac100 *priv)
{
 priv->tx_clean_pointer = ftmac100_next_tx_pointer(priv->tx_clean_pointer);
}
