
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 scalar_t__ COMM_CHAN_EVENT_INTERNAL_ERR ;

int mlx4_comm_internal_err(u32 slave_read)
{
 return (u32)COMM_CHAN_EVENT_INTERNAL_ERR ==
  (slave_read & (u32)COMM_CHAN_EVENT_INTERNAL_ERR) ? 1 : 0;
}
