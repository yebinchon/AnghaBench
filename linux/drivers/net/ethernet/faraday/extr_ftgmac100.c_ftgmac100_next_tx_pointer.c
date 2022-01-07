
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ftgmac100 {int tx_q_entries; } ;



__attribute__((used)) static unsigned int ftgmac100_next_tx_pointer(struct ftgmac100 *priv,
           unsigned int pointer)
{
 return (pointer + 1) & (priv->tx_q_entries - 1);
}
