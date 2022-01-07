
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct niu_parent {int num_ports; scalar_t__ plat_type; } ;
struct niu {int port; int flags; struct niu_parent* parent; } ;


 int ENODEV ;
 int ESPC_NUM_PORTS_MACS ;
 int ESPC_NUM_PORTS_MACS_VAL ;
 int NIU_FLAGS_XMAC ;
 scalar_t__ PLAT_TYPE_NIU ;
 int niu_pci_vpd_get_nports (struct niu*) ;
 int nr64 (int ) ;

__attribute__((used)) static int niu_get_and_validate_port(struct niu *np)
{
 struct niu_parent *parent = np->parent;

 if (np->port <= 1)
  np->flags |= NIU_FLAGS_XMAC;

 if (!parent->num_ports) {
  if (parent->plat_type == PLAT_TYPE_NIU) {
   parent->num_ports = 2;
  } else {
   parent->num_ports = niu_pci_vpd_get_nports(np);
   if (!parent->num_ports) {



    parent->num_ports = nr64(ESPC_NUM_PORTS_MACS) &
     ESPC_NUM_PORTS_MACS_VAL;




    if (!parent->num_ports)
     parent->num_ports = 4;
   }
  }
 }

 if (np->port >= parent->num_ports)
  return -ENODEV;

 return 0;
}
