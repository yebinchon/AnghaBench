
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int ENTER () ;
 scalar_t__ is_broadcast_ether_addr (int *) ;
 scalar_t__ is_multicast_ether_addr (int *) ;
 scalar_t__ is_zero_ether_addr (int *) ;
 int pr_debug (char*) ;

__attribute__((used)) static bool
mac_addr_valid(u8 *mac_addr)
{
 bool is_valid = 1;
 ENTER();


 if (is_multicast_ether_addr(mac_addr)) {
  pr_debug("MAC address is multicast\n");
  is_valid = 0;
 }

 else if (is_broadcast_ether_addr(mac_addr)) {
  pr_debug("MAC address is broadcast\n");
  is_valid = 0;
 }

 else if (is_zero_ether_addr(mac_addr)) {
  pr_debug("MAC address is all zeros\n");
  is_valid = 0;
 }
 return is_valid;
}
