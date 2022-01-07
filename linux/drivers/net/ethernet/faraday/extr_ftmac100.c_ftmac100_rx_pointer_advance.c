
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ftmac100 {int rx_pointer; } ;


 int ftmac100_next_rx_pointer (int ) ;

__attribute__((used)) static void ftmac100_rx_pointer_advance(struct ftmac100 *priv)
{
 priv->rx_pointer = ftmac100_next_rx_pointer(priv->rx_pointer);
}
