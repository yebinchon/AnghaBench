
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fm10k_intfc {scalar_t__ num_q_vectors; scalar_t__ num_rx_queues; scalar_t__ num_tx_queues; } ;



__attribute__((used)) static void fm10k_reset_num_queues(struct fm10k_intfc *interface)
{
 interface->num_tx_queues = 0;
 interface->num_rx_queues = 0;
 interface->num_q_vectors = 0;
}
