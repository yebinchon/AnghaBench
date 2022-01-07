
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int port_ids; int lock; } ;
struct nfp_flower_priv {TYPE_1__ internal_ports; } ;


 int idr_init (int *) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static void nfp_flower_internal_port_init(struct nfp_flower_priv *priv)
{
 spin_lock_init(&priv->internal_ports.lock);
 idr_init(&priv->internal_ports.port_ids);
}
