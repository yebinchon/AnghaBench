
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_bt_coex_profile_notif {int dummy; } ;


 int A2DP_SRC ;
 int A2DP_STATE ;
 int ACL_STATE ;
 int AGGR_TRFC_LD ;
 int BR_MAX_TX_POWER ;
 int BT_MBOX_PRINT (int,int ,int) ;
 int CHL_SEQN_LSB ;
 int CHL_SEQ_N ;
 int CONN ;
 int DISC ;
 int ESCO_RE_TX ;
 int INBAND_P ;
 int INBAND_S ;
 int INQUIRY ;
 int IP_SR ;
 int LE_ADV ;
 int LE_MAX_TX_POWER ;
 int LE_MIN_RSSI ;
 int LE_MSTR ;
 int LE_PROF1 ;
 int LE_PROF2 ;
 int LE_PROF_OTHER ;
 int LE_SCAN ;
 int LE_SLAVE_LAT ;
 int MSG_TYPE ;
 int MSG_TYPE_2 ;
 int MSTR_STATE ;
 int OBX_STATE ;
 int OPEN_CON_1 ;
 int OPEN_CON_2 ;
 int PAG ;
 int SCO_DURATION ;
 int SCO_RX_ACT ;
 int SCO_STATE ;
 int SCO_TX_ACT ;
 int SNIFF_ACT ;
 int SNIFF_INTERVAL ;
 int SNIFF_STATE ;
 int SSN ;
 int SSN_2 ;
 int TRAFFIC_LOAD ;
 int UPDATE_REQUEST ;
 scalar_t__ scnprintf (char*,int,char*) ;

__attribute__((used)) static
int iwl_mvm_coex_dump_mbox(struct iwl_bt_coex_profile_notif *notif, char *buf,
      int pos, int bufsz)
{
 pos += scnprintf(buf+pos, bufsz-pos, "MBOX dw0:\n");

 BT_MBOX_PRINT(0, LE_SLAVE_LAT, 0);
 BT_MBOX_PRINT(0, LE_PROF1, 0);
 BT_MBOX_PRINT(0, LE_PROF2, 0);
 BT_MBOX_PRINT(0, LE_PROF_OTHER, 0);
 BT_MBOX_PRINT(0, CHL_SEQ_N, 0);
 BT_MBOX_PRINT(0, INBAND_S, 0);
 BT_MBOX_PRINT(0, LE_MIN_RSSI, 0);
 BT_MBOX_PRINT(0, LE_SCAN, 0);
 BT_MBOX_PRINT(0, LE_ADV, 0);
 BT_MBOX_PRINT(0, LE_MAX_TX_POWER, 0);
 BT_MBOX_PRINT(0, OPEN_CON_1, 1);

 pos += scnprintf(buf+pos, bufsz-pos, "MBOX dw1:\n");

 BT_MBOX_PRINT(1, BR_MAX_TX_POWER, 0);
 BT_MBOX_PRINT(1, IP_SR, 0);
 BT_MBOX_PRINT(1, LE_MSTR, 0);
 BT_MBOX_PRINT(1, AGGR_TRFC_LD, 0);
 BT_MBOX_PRINT(1, MSG_TYPE, 0);
 BT_MBOX_PRINT(1, SSN, 1);

 pos += scnprintf(buf+pos, bufsz-pos, "MBOX dw2:\n");

 BT_MBOX_PRINT(2, SNIFF_ACT, 0);
 BT_MBOX_PRINT(2, PAG, 0);
 BT_MBOX_PRINT(2, INQUIRY, 0);
 BT_MBOX_PRINT(2, CONN, 0);
 BT_MBOX_PRINT(2, SNIFF_INTERVAL, 0);
 BT_MBOX_PRINT(2, DISC, 0);
 BT_MBOX_PRINT(2, SCO_TX_ACT, 0);
 BT_MBOX_PRINT(2, SCO_RX_ACT, 0);
 BT_MBOX_PRINT(2, ESCO_RE_TX, 0);
 BT_MBOX_PRINT(2, SCO_DURATION, 1);

 pos += scnprintf(buf+pos, bufsz-pos, "MBOX dw3:\n");

 BT_MBOX_PRINT(3, SCO_STATE, 0);
 BT_MBOX_PRINT(3, SNIFF_STATE, 0);
 BT_MBOX_PRINT(3, A2DP_STATE, 0);
 BT_MBOX_PRINT(3, A2DP_SRC, 0);
 BT_MBOX_PRINT(3, ACL_STATE, 0);
 BT_MBOX_PRINT(3, MSTR_STATE, 0);
 BT_MBOX_PRINT(3, OBX_STATE, 0);
 BT_MBOX_PRINT(3, OPEN_CON_2, 0);
 BT_MBOX_PRINT(3, TRAFFIC_LOAD, 0);
 BT_MBOX_PRINT(3, CHL_SEQN_LSB, 0);
 BT_MBOX_PRINT(3, INBAND_P, 0);
 BT_MBOX_PRINT(3, MSG_TYPE_2, 0);
 BT_MBOX_PRINT(3, SSN_2, 0);
 BT_MBOX_PRINT(3, UPDATE_REQUEST, 1);

 return pos;
}
