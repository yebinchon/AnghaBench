
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int mac_addr_value; } ;
struct aggregator {int is_individual; int aggregator_identifier; TYPE_3__* slave; scalar_t__ num_of_ports; scalar_t__ is_active; int * lag_ports; scalar_t__ transmit_state; scalar_t__ receive_state; scalar_t__ partner_oper_aggregator_key; scalar_t__ partner_system_priority; TYPE_1__ partner_system; scalar_t__ actor_oper_aggregator_key; scalar_t__ actor_admin_aggregator_key; } ;
struct TYPE_6__ {TYPE_2__* dev; } ;
struct TYPE_5__ {char* name; } ;


 int eth_zero_addr (int ) ;
 int pr_debug (char*,char*,int ) ;

__attribute__((used)) static void ad_clear_agg(struct aggregator *aggregator)
{
 if (aggregator) {
  aggregator->is_individual = 0;
  aggregator->actor_admin_aggregator_key = 0;
  aggregator->actor_oper_aggregator_key = 0;
  eth_zero_addr(aggregator->partner_system.mac_addr_value);
  aggregator->partner_system_priority = 0;
  aggregator->partner_oper_aggregator_key = 0;
  aggregator->receive_state = 0;
  aggregator->transmit_state = 0;
  aggregator->lag_ports = ((void*)0);
  aggregator->is_active = 0;
  aggregator->num_of_ports = 0;
  pr_debug("%s: LAG %d was cleared\n",
    aggregator->slave ?
    aggregator->slave->dev->name : "NULL",
    aggregator->aggregator_identifier);
 }
}
