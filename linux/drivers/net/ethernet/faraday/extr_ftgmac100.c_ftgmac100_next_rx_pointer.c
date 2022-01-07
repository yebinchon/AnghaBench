
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ftgmac100 {int rx_q_entries; } ;



__attribute__((used)) static unsigned int ftgmac100_next_rx_pointer(struct ftgmac100 *priv,
           unsigned int pointer)
{
 return (pointer + 1) & (priv->rx_q_entries - 1);
}
