
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {struct stmmac_test_priv* af_packet_priv; TYPE_2__* dev; int func; int type; } ;
struct stmmac_test_priv {int ok; int vlan_id; TYPE_4__ pt; int comp; struct stmmac_packet_attrs* packet; } ;
struct TYPE_6__ {int vlhash; } ;
struct stmmac_priv {TYPE_2__* dev; TYPE_1__ dma_cap; } ;
struct stmmac_packet_attrs {int vlan; int vlan_id_out; int sport; int dport; int dst; } ;
struct sk_buff {int dummy; } ;
struct TYPE_7__ {int dev_addr; } ;


 int EINVAL ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int ETH_P_8021Q ;
 int ETH_P_IP ;
 int ETIMEDOUT ;
 int GFP_KERNEL ;
 int STMMAC_LB_TIMEOUT ;
 int dev_add_pack (TYPE_4__*) ;
 int dev_queue_xmit (struct sk_buff*) ;
 int dev_remove_pack (TYPE_4__*) ;
 int htons (int ) ;
 int init_completion (int *) ;
 int kfree (struct stmmac_test_priv*) ;
 struct stmmac_test_priv* kzalloc (int,int ) ;
 int skb_set_queue_mapping (struct sk_buff*,int ) ;
 struct sk_buff* stmmac_test_get_udp_skb (struct stmmac_priv*,struct stmmac_packet_attrs*) ;
 int stmmac_test_vlan_validate ;
 int vlan_vid_add (TYPE_2__*,int ,int) ;
 int vlan_vid_del (TYPE_2__*,int ,int) ;
 int wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static int stmmac_test_vlanfilt(struct stmmac_priv *priv)
{
 struct stmmac_packet_attrs attr = { };
 struct stmmac_test_priv *tpriv;
 struct sk_buff *skb = ((void*)0);
 int ret = 0, i;

 if (!priv->dma_cap.vlhash)
  return -EOPNOTSUPP;

 tpriv = kzalloc(sizeof(*tpriv), GFP_KERNEL);
 if (!tpriv)
  return -ENOMEM;

 tpriv->ok = 0;
 init_completion(&tpriv->comp);

 tpriv->pt.type = htons(ETH_P_IP);
 tpriv->pt.func = stmmac_test_vlan_validate;
 tpriv->pt.dev = priv->dev;
 tpriv->pt.af_packet_priv = tpriv;
 tpriv->packet = &attr;






 tpriv->vlan_id = 0x123;
 dev_add_pack(&tpriv->pt);

 ret = vlan_vid_add(priv->dev, htons(ETH_P_8021Q), tpriv->vlan_id);
 if (ret)
  goto cleanup;

 for (i = 0; i < 4; i++) {
  attr.vlan = 1;
  attr.vlan_id_out = tpriv->vlan_id + i;
  attr.dst = priv->dev->dev_addr;
  attr.sport = 9;
  attr.dport = 9;

  skb = stmmac_test_get_udp_skb(priv, &attr);
  if (!skb) {
   ret = -ENOMEM;
   goto vlan_del;
  }

  skb_set_queue_mapping(skb, 0);
  ret = dev_queue_xmit(skb);
  if (ret)
   goto vlan_del;

  wait_for_completion_timeout(&tpriv->comp, STMMAC_LB_TIMEOUT);
  ret = tpriv->ok ? 0 : -ETIMEDOUT;
  if (ret && !i) {
   goto vlan_del;
  } else if (!ret && i) {
   ret = -EINVAL;
   goto vlan_del;
  } else {
   ret = 0;
  }

  tpriv->ok = 0;
 }

vlan_del:
 vlan_vid_del(priv->dev, htons(ETH_P_8021Q), tpriv->vlan_id);
cleanup:
 dev_remove_pack(&tpriv->pt);
 kfree(tpriv);
 return ret;
}
