
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ftmac100 {int dummy; } ;


 scalar_t__ ftmac100_tx_complete_packet (struct ftmac100*) ;

__attribute__((used)) static void ftmac100_tx_complete(struct ftmac100 *priv)
{
 while (ftmac100_tx_complete_packet(priv))
  ;
}
