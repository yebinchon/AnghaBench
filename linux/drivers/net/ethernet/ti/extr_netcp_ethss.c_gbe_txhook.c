
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netcp_packet {int * tx_pipe; } ;
struct gbe_intf {int tx_pipe; } ;


 int gbe_txtstamp_mark_pkt (struct gbe_intf*,struct netcp_packet*) ;

__attribute__((used)) static int gbe_txhook(int order, void *data, struct netcp_packet *p_info)
{
 struct gbe_intf *gbe_intf = data;

 p_info->tx_pipe = &gbe_intf->tx_pipe;

 return gbe_txtstamp_mark_pkt(gbe_intf, p_info);
}
