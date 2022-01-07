
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rocker_port {struct ofdpa_port* wpriv; } ;
struct ofdpa_port {int dummy; } ;
struct neighbour {int ha; scalar_t__ primary_key; } ;
typedef int __be32 ;


 int OFDPA_OP_FLAG_NOWAIT ;
 int OFDPA_OP_FLAG_REMOVE ;
 int ofdpa_port_ipv4_neigh (struct ofdpa_port*,int,int ,int ) ;

__attribute__((used)) static int ofdpa_port_neigh_destroy(struct rocker_port *rocker_port,
        struct neighbour *n)
{
 struct ofdpa_port *ofdpa_port = rocker_port->wpriv;
 int flags = OFDPA_OP_FLAG_REMOVE | OFDPA_OP_FLAG_NOWAIT;
 __be32 ip_addr = *(__be32 *) n->primary_key;

 return ofdpa_port_ipv4_neigh(ofdpa_port, flags, ip_addr, n->ha);
}
