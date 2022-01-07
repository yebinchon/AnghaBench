
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_rx_packet {scalar_t__ data; } ;
struct iwl_priv {int sta_lock; } ;
struct iwl_add_sta_resp {int status; } ;






 int IWL_DEBUG_ASSOC (struct iwl_priv*,char*,int) ;
 int IWL_DEBUG_INFO (struct iwl_priv*,char*) ;
 int IWL_ERR (struct iwl_priv*,char*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void iwl_process_add_sta_resp(struct iwl_priv *priv,
         struct iwl_rx_packet *pkt)
{
 struct iwl_add_sta_resp *add_sta_resp = (void *)pkt->data;

 IWL_DEBUG_INFO(priv, "Processing response for adding station\n");

 spin_lock_bh(&priv->sta_lock);

 switch (add_sta_resp->status) {
 case 128:
  IWL_DEBUG_INFO(priv, "REPLY_ADD_STA PASSED\n");
  break;
 case 129:
  IWL_ERR(priv, "Adding station failed, no room in table.\n");
  break;
 case 130:
  IWL_ERR(priv,
   "Adding station failed, no block ack resource.\n");
  break;
 case 131:
  IWL_ERR(priv, "Attempting to modify non-existing station\n");
  break;
 default:
  IWL_DEBUG_ASSOC(priv, "Received REPLY_ADD_STA:(0x%08X)\n",
    add_sta_resp->status);
  break;
 }

 spin_unlock_bh(&priv->sta_lock);
}
