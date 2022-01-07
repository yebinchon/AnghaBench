
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mac_addr_value; } ;
struct aggregator {int * slave; scalar_t__ aggregator_identifier; TYPE_1__ aggregator_mac_address; } ;


 int ad_clear_agg (struct aggregator*) ;
 int eth_zero_addr (int ) ;

__attribute__((used)) static void ad_initialize_agg(struct aggregator *aggregator)
{
 if (aggregator) {
  ad_clear_agg(aggregator);

  eth_zero_addr(aggregator->aggregator_mac_address.mac_addr_value);
  aggregator->aggregator_identifier = 0;
  aggregator->slave = ((void*)0);
 }
}
