
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef int u32 ;
struct nfp_reprs {size_t num_reprs; int * reprs; } ;
struct nfp_app {int * reprs; } ;
struct net_device {size_t num_reprs; int * reprs; } ;
typedef enum nfp_repr_type { ____Placeholder_nfp_repr_type } nfp_repr_type ;


 scalar_t__ FIELD_GET (int ,int ) ;
 int NFP_FLOWER_CMSG_PORT_PHYS_PORT_NUM ;
 int NFP_FLOWER_CMSG_PORT_TYPE ;
 scalar_t__ NFP_FLOWER_CMSG_PORT_TYPE_OTHER_PORT ;
 int NFP_REPR_TYPE_MAX ;
 struct nfp_reprs* nfp_flower_get_netdev_from_internal_port_id (struct nfp_app*,size_t) ;
 int nfp_flower_repr_get_type_and_port (struct nfp_app*,int ,size_t*) ;
 struct nfp_reprs* rcu_dereference (int ) ;

__attribute__((used)) static struct net_device *
nfp_flower_dev_get(struct nfp_app *app, u32 port_id, bool *redir_egress)
{
 enum nfp_repr_type repr_type;
 struct nfp_reprs *reprs;
 u8 port = 0;


 if (FIELD_GET(NFP_FLOWER_CMSG_PORT_TYPE, port_id) ==
     NFP_FLOWER_CMSG_PORT_TYPE_OTHER_PORT) {
  if (redir_egress)
   *redir_egress = 1;
  port = FIELD_GET(NFP_FLOWER_CMSG_PORT_PHYS_PORT_NUM, port_id);
  return nfp_flower_get_netdev_from_internal_port_id(app, port);
 }

 repr_type = nfp_flower_repr_get_type_and_port(app, port_id, &port);
 if (repr_type > NFP_REPR_TYPE_MAX)
  return ((void*)0);

 reprs = rcu_dereference(app->reprs[repr_type]);
 if (!reprs)
  return ((void*)0);

 if (port >= reprs->num_reprs)
  return ((void*)0);

 return rcu_dereference(reprs->reprs[port]);
}
