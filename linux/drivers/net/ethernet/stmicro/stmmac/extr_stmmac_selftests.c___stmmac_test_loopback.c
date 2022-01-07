
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct stmmac_test_priv* af_packet_priv; int dev; int func; int type; } ;
struct stmmac_test_priv {int ok; TYPE_1__ pt; int comp; struct stmmac_packet_attrs* packet; } ;
struct stmmac_priv {int dev; } ;
struct stmmac_packet_attrs {scalar_t__ dont_wait; int timeout; int queue_mapping; } ;
struct sk_buff {int dummy; } ;


 int ENOMEM ;
 int ETH_P_IP ;
 int ETIMEDOUT ;
 int GFP_KERNEL ;
 int STMMAC_LB_TIMEOUT ;
 int dev_add_pack (TYPE_1__*) ;
 int dev_queue_xmit (struct sk_buff*) ;
 int dev_remove_pack (TYPE_1__*) ;
 int htons (int ) ;
 int init_completion (int *) ;
 int kfree (struct stmmac_test_priv*) ;
 struct stmmac_test_priv* kzalloc (int,int ) ;
 int skb_set_queue_mapping (struct sk_buff*,int ) ;
 struct sk_buff* stmmac_test_get_udp_skb (struct stmmac_priv*,struct stmmac_packet_attrs*) ;
 int stmmac_test_loopback_validate ;
 int wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static int __stmmac_test_loopback(struct stmmac_priv *priv,
      struct stmmac_packet_attrs *attr)
{
 struct stmmac_test_priv *tpriv;
 struct sk_buff *skb = ((void*)0);
 int ret = 0;

 tpriv = kzalloc(sizeof(*tpriv), GFP_KERNEL);
 if (!tpriv)
  return -ENOMEM;

 tpriv->ok = 0;
 init_completion(&tpriv->comp);

 tpriv->pt.type = htons(ETH_P_IP);
 tpriv->pt.func = stmmac_test_loopback_validate;
 tpriv->pt.dev = priv->dev;
 tpriv->pt.af_packet_priv = tpriv;
 tpriv->packet = attr;

 if (!attr->dont_wait)
  dev_add_pack(&tpriv->pt);

 skb = stmmac_test_get_udp_skb(priv, attr);
 if (!skb) {
  ret = -ENOMEM;
  goto cleanup;
 }

 skb_set_queue_mapping(skb, attr->queue_mapping);
 ret = dev_queue_xmit(skb);
 if (ret)
  goto cleanup;

 if (attr->dont_wait)
  goto cleanup;

 if (!attr->timeout)
  attr->timeout = STMMAC_LB_TIMEOUT;

 wait_for_completion_timeout(&tpriv->comp, attr->timeout);
 ret = tpriv->ok ? 0 : -ETIMEDOUT;

cleanup:
 if (!attr->dont_wait)
  dev_remove_pack(&tpriv->pt);
 kfree(tpriv);
 return ret;
}
