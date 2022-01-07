
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct aggregator {int lag_ports; } ;
 int __agg_active_ports (struct aggregator*) ;
 int __get_link_speed (int ) ;

__attribute__((used)) static u32 __get_agg_bandwidth(struct aggregator *aggregator)
{
 int nports = __agg_active_ports(aggregator);
 u32 bandwidth = 0;

 if (nports) {
  switch (__get_link_speed(aggregator->lag_ports)) {
  case 135:
   bandwidth = nports;
   break;
  case 137:
   bandwidth = nports * 10;
   break;
  case 138:
   bandwidth = nports * 100;
   break;
  case 139:
   bandwidth = nports * 1000;
   break;
  case 132:
   bandwidth = nports * 2500;
   break;
  case 129:
   bandwidth = nports * 5000;
   break;
  case 140:
   bandwidth = nports * 10000;
   break;
  case 136:
   bandwidth = nports * 14000;
   break;
  case 134:
   bandwidth = nports * 20000;
   break;
  case 133:
   bandwidth = nports * 25000;
   break;
  case 131:
   bandwidth = nports * 40000;
   break;
  case 130:
   bandwidth = nports * 50000;
   break;
  case 128:
   bandwidth = nports * 56000;
   break;
  case 141:
   bandwidth = nports * 100000;
   break;
  default:
   bandwidth = 0;
  }
 }
 return bandwidth;
}
