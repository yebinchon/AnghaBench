
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_rx_phy_res {int dummy; } ;
struct iwl_rx_packet {int data; } ;
struct iwl_rx_cmd_buffer {int dummy; } ;
struct iwl_priv {int last_phy_res_valid; int last_phy_res; int ampdu_ref; } ;


 int memcpy (int *,int ,int) ;
 struct iwl_rx_packet* rxb_addr (struct iwl_rx_cmd_buffer*) ;

__attribute__((used)) static void iwlagn_rx_reply_rx_phy(struct iwl_priv *priv,
       struct iwl_rx_cmd_buffer *rxb)
{
 struct iwl_rx_packet *pkt = rxb_addr(rxb);

 priv->last_phy_res_valid = 1;
 priv->ampdu_ref++;
 memcpy(&priv->last_phy_res, pkt->data,
        sizeof(struct iwl_rx_phy_res));
}
