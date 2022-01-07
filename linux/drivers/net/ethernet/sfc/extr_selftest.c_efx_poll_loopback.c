
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {struct efx_loopback_state* loopback_selftest; } ;
struct efx_loopback_state {scalar_t__ packet_count; int rx_good; } ;


 scalar_t__ atomic_read (int *) ;

__attribute__((used)) static int efx_poll_loopback(struct efx_nic *efx)
{
 struct efx_loopback_state *state = efx->loopback_selftest;

 return atomic_read(&state->rx_good) == state->packet_count;
}
