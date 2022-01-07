
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct rcar_canfd_global {struct rcar_canfd_channel** ch; } ;
struct rcar_canfd_channel {int ndev; int napi; } ;


 int free_candev (int ) ;
 int netif_napi_del (int *) ;
 int unregister_candev (int ) ;

__attribute__((used)) static void rcar_canfd_channel_remove(struct rcar_canfd_global *gpriv, u32 ch)
{
 struct rcar_canfd_channel *priv = gpriv->ch[ch];

 if (priv) {
  unregister_candev(priv->ndev);
  netif_napi_del(&priv->napi);
  free_candev(priv->ndev);
 }
}
