
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct e1000_bus_info {scalar_t__ func; } ;
struct e1000_hw {struct e1000_bus_info bus; } ;



void e1000_set_lan_id_single_port(struct e1000_hw *hw)
{
 struct e1000_bus_info *bus = &hw->bus;

 bus->func = 0;
}
