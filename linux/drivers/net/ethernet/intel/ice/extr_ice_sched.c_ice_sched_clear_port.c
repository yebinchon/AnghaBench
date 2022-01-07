
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ice_port_info {scalar_t__ port_state; int sched_lock; } ;


 scalar_t__ ICE_SCHED_PORT_STATE_INIT ;
 scalar_t__ ICE_SCHED_PORT_STATE_READY ;
 int ice_sched_clear_tx_topo (struct ice_port_info*) ;
 int mutex_destroy (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void ice_sched_clear_port(struct ice_port_info *pi)
{
 if (!pi || pi->port_state != ICE_SCHED_PORT_STATE_READY)
  return;

 pi->port_state = ICE_SCHED_PORT_STATE_INIT;
 mutex_lock(&pi->sched_lock);
 ice_sched_clear_tx_topo(pi);
 mutex_unlock(&pi->sched_lock);
 mutex_destroy(&pi->sched_lock);
}
