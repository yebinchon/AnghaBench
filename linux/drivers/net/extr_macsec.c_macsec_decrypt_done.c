
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int len; struct net_device* dev; } ;
struct net_device {int dummy; } ;
struct macsec_rx_sc {int dummy; } ;
struct macsec_rx_sa {struct macsec_rx_sc* sc; } ;
struct TYPE_5__ {int netdev; int icv_len; } ;
struct macsec_dev {int gro_cells; TYPE_2__ secy; } ;
struct crypto_async_request {struct sk_buff* data; } ;
struct TYPE_6__ {int packet_number; } ;
struct TYPE_4__ {int valid; int has_sci; int req; struct macsec_rx_sa* rx_sa; } ;


 scalar_t__ NET_RX_SUCCESS ;
 int aead_request_free (int ) ;
 int count_rx (struct net_device*,int) ;
 int dev_put (struct net_device*) ;
 scalar_t__ gro_cells_receive (int *,struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 TYPE_3__* macsec_ethhdr (struct sk_buff*) ;
 int macsec_extra_len (int ) ;
 int macsec_finalize_skb (struct sk_buff*,int ,int ) ;
 int macsec_post_decrypt (struct sk_buff*,TYPE_2__*,int ) ;
 struct macsec_dev* macsec_priv (struct net_device*) ;
 int macsec_reset_skb (struct sk_buff*,int ) ;
 int macsec_rxsa_put (struct macsec_rx_sa*) ;
 int macsec_rxsc_put (struct macsec_rx_sc*) ;
 TYPE_1__* macsec_skb_cb (struct sk_buff*) ;
 int ntohl (int ) ;
 int rcu_read_lock_bh () ;
 int rcu_read_unlock_bh () ;

__attribute__((used)) static void macsec_decrypt_done(struct crypto_async_request *base, int err)
{
 struct sk_buff *skb = base->data;
 struct net_device *dev = skb->dev;
 struct macsec_dev *macsec = macsec_priv(dev);
 struct macsec_rx_sa *rx_sa = macsec_skb_cb(skb)->rx_sa;
 struct macsec_rx_sc *rx_sc = rx_sa->sc;
 int len;
 u32 pn;

 aead_request_free(macsec_skb_cb(skb)->req);

 if (!err)
  macsec_skb_cb(skb)->valid = 1;

 rcu_read_lock_bh();
 pn = ntohl(macsec_ethhdr(skb)->packet_number);
 if (!macsec_post_decrypt(skb, &macsec->secy, pn)) {
  rcu_read_unlock_bh();
  kfree_skb(skb);
  goto out;
 }

 macsec_finalize_skb(skb, macsec->secy.icv_len,
       macsec_extra_len(macsec_skb_cb(skb)->has_sci));
 macsec_reset_skb(skb, macsec->secy.netdev);

 len = skb->len;
 if (gro_cells_receive(&macsec->gro_cells, skb) == NET_RX_SUCCESS)
  count_rx(dev, len);

 rcu_read_unlock_bh();

out:
 macsec_rxsa_put(rx_sa);
 macsec_rxsc_put(rx_sc);
 dev_put(dev);
}
