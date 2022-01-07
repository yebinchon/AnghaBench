
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int TEAM_DEFAULT_NUM_RX_QUEUES ;

__attribute__((used)) static unsigned int team_get_num_rx_queues(void)
{
 return TEAM_DEFAULT_NUM_RX_QUEUES;
}
