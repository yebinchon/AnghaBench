
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_eth_table_port {scalar_t__ interface; scalar_t__ media; int port_type; } ;
struct nfp_cpp {int dummy; } ;


 scalar_t__ NFP_INTERFACE_NONE ;
 scalar_t__ NFP_INTERFACE_RJ45 ;
 scalar_t__ NFP_MEDIA_FIBRE ;
 int PORT_DA ;
 int PORT_FIBRE ;
 int PORT_NONE ;
 int PORT_TP ;

__attribute__((used)) static void
nfp_eth_calc_port_type(struct nfp_cpp *cpp, struct nfp_eth_table_port *entry)
{
 if (entry->interface == NFP_INTERFACE_NONE) {
  entry->port_type = PORT_NONE;
  return;
 } else if (entry->interface == NFP_INTERFACE_RJ45) {
  entry->port_type = PORT_TP;
  return;
 }

 if (entry->media == NFP_MEDIA_FIBRE)
  entry->port_type = PORT_FIBRE;
 else
  entry->port_type = PORT_DA;
}
