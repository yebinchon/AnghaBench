
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct can_rx_offload {int napi; } ;


 int can_rx_offload_reset (struct can_rx_offload*) ;
 int napi_enable (int *) ;

void can_rx_offload_enable(struct can_rx_offload *offload)
{
 can_rx_offload_reset(offload);
 napi_enable(&offload->napi);
}
