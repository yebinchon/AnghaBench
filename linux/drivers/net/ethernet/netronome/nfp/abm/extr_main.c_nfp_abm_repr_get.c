
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


 void* FIELD_GET (int ,int ) ;
 int NFP_ABM_PORTID_ID ;
 int NFP_ABM_PORTID_TYPE ;
 struct nfp_reprs* rcu_dereference (int ) ;

__attribute__((used)) static struct net_device *
nfp_abm_repr_get(struct nfp_app *app, u32 port_id, bool *redir_egress)
{
 enum nfp_repr_type rtype;
 struct nfp_reprs *reprs;
 u8 port;

 rtype = FIELD_GET(NFP_ABM_PORTID_TYPE, port_id);
 port = FIELD_GET(NFP_ABM_PORTID_ID, port_id);

 reprs = rcu_dereference(app->reprs[rtype]);
 if (!reprs)
  return ((void*)0);

 if (port >= reprs->num_reprs)
  return ((void*)0);

 return rcu_dereference(reprs->reprs[port]);
}
