
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netcp_intf {int dummy; } ;


 int netcp_process_one_rx_packet (struct netcp_intf*) ;

__attribute__((used)) static int netcp_process_rx_packets(struct netcp_intf *netcp,
        unsigned int budget)
{
 int i;

 for (i = 0; (i < budget) && !netcp_process_one_rx_packet(netcp); i++)
  ;
 return i;
}
