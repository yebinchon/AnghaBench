
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mal_instance {int num_tx_chans; } ;


 int BUG_ON (int) ;
 int NUM_TX_BUFF ;

int mal_tx_bd_offset(struct mal_instance *mal, int channel)
{
 BUG_ON(channel < 0 || channel >= mal->num_tx_chans);

 return channel * NUM_TX_BUFF;
}
