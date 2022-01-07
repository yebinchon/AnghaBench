
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct il_priv {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* set_rxon_chain ) (struct il_priv*) ;} ;


 int il_commit_rxon (struct il_priv*) ;
 int il_connection_init_rx_config (struct il_priv*) ;
 int stub1 (struct il_priv*) ;

__attribute__((used)) static int
il_set_mode(struct il_priv *il)
{
 il_connection_init_rx_config(il);

 if (il->ops->set_rxon_chain)
  il->ops->set_rxon_chain(il);

 return il_commit_rxon(il);
}
