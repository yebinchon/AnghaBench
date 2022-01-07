
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int tx_queues ;

unsigned int bond_get_num_tx_queues(void)
{
 return tx_queues;
}
