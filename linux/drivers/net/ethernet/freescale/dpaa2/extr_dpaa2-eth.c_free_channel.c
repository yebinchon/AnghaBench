
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dpaa2_eth_priv {int dummy; } ;
struct dpaa2_eth_channel {int dpcon; } ;


 int free_dpcon (struct dpaa2_eth_priv*,int ) ;
 int kfree (struct dpaa2_eth_channel*) ;

__attribute__((used)) static void free_channel(struct dpaa2_eth_priv *priv,
    struct dpaa2_eth_channel *channel)
{
 free_dpcon(priv, channel->dpcon);
 kfree(channel);
}
