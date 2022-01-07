
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct tx_radiotap_hdr {scalar_t__ data_retries; } ;
struct lbs_private {scalar_t__ connect_status; scalar_t__ mesh_dev; scalar_t__ dev; TYPE_2__* currenttxskb; scalar_t__ txretrycount; TYPE_1__* wdev; } ;
struct TYPE_5__ {int protocol; scalar_t__ data; } ;
struct TYPE_4__ {scalar_t__ iftype; } ;


 scalar_t__ LBS_CONNECTED ;
 scalar_t__ NL80211_IFTYPE_MONITOR ;
 int eth_type_trans (TYPE_2__*,scalar_t__) ;
 scalar_t__ netif_running (scalar_t__) ;
 int netif_rx (TYPE_2__*) ;
 int netif_wake_queue (scalar_t__) ;

void lbs_send_tx_feedback(struct lbs_private *priv, u32 try_count)
{
 struct tx_radiotap_hdr *radiotap_hdr;

 if (priv->wdev->iftype != NL80211_IFTYPE_MONITOR ||
     priv->currenttxskb == ((void*)0))
  return;

 radiotap_hdr = (struct tx_radiotap_hdr *)priv->currenttxskb->data;

 radiotap_hdr->data_retries = try_count ?
  (1 + priv->txretrycount - try_count) : 0;

 priv->currenttxskb->protocol = eth_type_trans(priv->currenttxskb,
            priv->dev);
 netif_rx(priv->currenttxskb);

 priv->currenttxskb = ((void*)0);

 if (priv->connect_status == LBS_CONNECTED)
  netif_wake_queue(priv->dev);

 if (priv->mesh_dev && netif_running(priv->mesh_dev))
  netif_wake_queue(priv->mesh_dev);
}
