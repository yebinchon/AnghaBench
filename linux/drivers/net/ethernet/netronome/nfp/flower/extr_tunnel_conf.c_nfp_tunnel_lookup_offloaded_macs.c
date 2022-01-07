
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct nfp_tun_offloaded_mac {int dummy; } ;
struct TYPE_2__ {int offloaded_macs; } ;
struct nfp_flower_priv {TYPE_1__ tun; } ;
struct nfp_app {struct nfp_flower_priv* priv; } ;


 int offloaded_macs_params ;
 struct nfp_tun_offloaded_mac* rhashtable_lookup_fast (int *,int *,int ) ;

__attribute__((used)) static struct nfp_tun_offloaded_mac *
nfp_tunnel_lookup_offloaded_macs(struct nfp_app *app, u8 *mac)
{
 struct nfp_flower_priv *priv = app->priv;

 return rhashtable_lookup_fast(&priv->tun.offloaded_macs, mac,
          offloaded_macs_params);
}
