
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct auth_body {scalar_t__ el_id; int chall_text_len; int * chall_text; int alg; int trans_seq; int status; } ;
struct atmel_private {scalar_t__ ExpectedAuthentTransactionSeqNum; int CurrentAuthentTransactionSeqNum; int exclude_unencrypted; scalar_t__ station_is_associated; scalar_t__ AuthenticationRequestRetryCnt; scalar_t__ current_BSS; TYPE_1__* BSSinfo; scalar_t__ connect_to_any_BSS; scalar_t__ wep_is_on; scalar_t__ station_was_associated; scalar_t__ rx_buf; } ;
struct TYPE_2__ {int channel; } ;


 int STATION_STATE_ASSOCIATING ;
 int STATION_STATE_MGMT_ERROR ;
 int STATION_STATE_REASSOCIATING ;
 scalar_t__ WLAN_AUTH_OPEN ;
 scalar_t__ WLAN_AUTH_SHARED_KEY ;
 scalar_t__ WLAN_EID_CHALLENGE ;
 scalar_t__ WLAN_STATUS_NOT_SUPPORTED_AUTH_ALG ;
 scalar_t__ WLAN_STATUS_SUCCESS ;
 int atmel_enter_state (struct atmel_private*,int ) ;
 int atmel_join_bss (struct atmel_private*,int) ;
 scalar_t__ le16_to_cpu (int ) ;
 int retrieve_bss (struct atmel_private*) ;
 int send_association_request (struct atmel_private*,int) ;
 int send_authentication_request (struct atmel_private*,scalar_t__,int *,int ) ;

__attribute__((used)) static void authenticate(struct atmel_private *priv, u16 frame_len)
{
 struct auth_body *auth = (struct auth_body *)priv->rx_buf;
 u16 status = le16_to_cpu(auth->status);
 u16 trans_seq_no = le16_to_cpu(auth->trans_seq);
 u16 system = le16_to_cpu(auth->alg);

 if (status == WLAN_STATUS_SUCCESS && !priv->wep_is_on) {

  if (priv->station_was_associated) {
   atmel_enter_state(priv, STATION_STATE_REASSOCIATING);
   send_association_request(priv, 1);
   return;
  } else {
   atmel_enter_state(priv, STATION_STATE_ASSOCIATING);
   send_association_request(priv, 0);
   return;
  }
 }

 if (status == WLAN_STATUS_SUCCESS && priv->wep_is_on) {
  int should_associate = 0;

  if (trans_seq_no != priv->ExpectedAuthentTransactionSeqNum)
   return;

  if (system == WLAN_AUTH_OPEN) {
   if (trans_seq_no == 0x0002) {
    should_associate = 1;
   }
  } else if (system == WLAN_AUTH_SHARED_KEY) {
   if (trans_seq_no == 0x0002 &&
       auth->el_id == WLAN_EID_CHALLENGE) {
    send_authentication_request(priv, system, auth->chall_text, auth->chall_text_len);
    return;
   } else if (trans_seq_no == 0x0004) {
    should_associate = 1;
   }
  }

  if (should_associate) {
   if (priv->station_was_associated) {
    atmel_enter_state(priv, STATION_STATE_REASSOCIATING);
    send_association_request(priv, 1);
    return;
   } else {
    atmel_enter_state(priv, STATION_STATE_ASSOCIATING);
    send_association_request(priv, 0);
    return;
   }
  }
 }

 if (status == WLAN_STATUS_NOT_SUPPORTED_AUTH_ALG) {



  if (system == WLAN_AUTH_OPEN) {
   priv->CurrentAuthentTransactionSeqNum = 0x001;
   priv->exclude_unencrypted = 1;
   send_authentication_request(priv, WLAN_AUTH_SHARED_KEY, ((void*)0), 0);
   return;
  } else if (system == WLAN_AUTH_SHARED_KEY
      && priv->wep_is_on) {
   priv->CurrentAuthentTransactionSeqNum = 0x001;
   priv->exclude_unencrypted = 0;
   send_authentication_request(priv, WLAN_AUTH_OPEN, ((void*)0), 0);
   return;
  } else if (priv->connect_to_any_BSS) {
   int bss_index;

   priv->BSSinfo[(int)(priv->current_BSS)].channel |= 0x80;

   if ((bss_index = retrieve_bss(priv)) != -1) {
    atmel_join_bss(priv, bss_index);
    return;
   }
  }
 }

 priv->AuthenticationRequestRetryCnt = 0;
 atmel_enter_state(priv, STATION_STATE_MGMT_ERROR);
 priv->station_is_associated = 0;
}
