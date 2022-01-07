
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int C_ADD_STA ;
 int C_BT_CONFIG ;
 int C_CHANNEL_SWITCH ;
 int C_CT_KILL_CONFIG ;
 int C_LEDS ;
 int C_PHY_CALIBRATION ;
 int C_POWER_TBL ;
 int C_QOS_PARAM ;
 int C_RATE_SCALE ;
 int C_REM_STA ;
 int C_RXON ;
 int C_RXON_ASSOC ;
 int C_RXON_TIMING ;
 int C_SCAN ;
 int C_SCAN_ABORT ;
 int C_SENSITIVITY ;
 int C_SPECTRUM_MEASUREMENT ;
 int C_STATS ;
 int C_TX ;
 int C_TX_BEACON ;
 int C_TX_LINK_QUALITY_CMD ;
 int C_TX_PWR_TBL ;
 int C_WEPKEY ;
 int IL_CMD (int ) ;
 int N_3945_RX ;
 int N_ALIVE ;
 int N_BEACON ;
 int N_CARD_STATE ;
 int N_CHANNEL_SWITCH ;
 int N_COMPRESSED_BA ;
 int N_ERROR ;
 int N_MISSED_BEACONS ;
 int N_PM_DEBUG_STATS ;
 int N_PM_SLEEP ;
 int N_RX ;
 int N_RX_MPDU ;
 int N_RX_PHY ;
 int N_SCAN_COMPLETE ;
 int N_SCAN_RESULTS ;
 int N_SCAN_START ;
 int N_SPECTRUM_MEASUREMENT ;
 int N_STATS ;

const char *
il_get_cmd_string(u8 cmd)
{
 switch (cmd) {
  IL_CMD(N_ALIVE);
  IL_CMD(N_ERROR);
  IL_CMD(C_RXON);
  IL_CMD(C_RXON_ASSOC);
  IL_CMD(C_QOS_PARAM);
  IL_CMD(C_RXON_TIMING);
  IL_CMD(C_ADD_STA);
  IL_CMD(C_REM_STA);
  IL_CMD(C_WEPKEY);
  IL_CMD(N_3945_RX);
  IL_CMD(C_TX);
  IL_CMD(C_RATE_SCALE);
  IL_CMD(C_LEDS);
  IL_CMD(C_TX_LINK_QUALITY_CMD);
  IL_CMD(C_CHANNEL_SWITCH);
  IL_CMD(N_CHANNEL_SWITCH);
  IL_CMD(C_SPECTRUM_MEASUREMENT);
  IL_CMD(N_SPECTRUM_MEASUREMENT);
  IL_CMD(C_POWER_TBL);
  IL_CMD(N_PM_SLEEP);
  IL_CMD(N_PM_DEBUG_STATS);
  IL_CMD(C_SCAN);
  IL_CMD(C_SCAN_ABORT);
  IL_CMD(N_SCAN_START);
  IL_CMD(N_SCAN_RESULTS);
  IL_CMD(N_SCAN_COMPLETE);
  IL_CMD(N_BEACON);
  IL_CMD(C_TX_BEACON);
  IL_CMD(C_TX_PWR_TBL);
  IL_CMD(C_BT_CONFIG);
  IL_CMD(C_STATS);
  IL_CMD(N_STATS);
  IL_CMD(N_CARD_STATE);
  IL_CMD(N_MISSED_BEACONS);
  IL_CMD(C_CT_KILL_CONFIG);
  IL_CMD(C_SENSITIVITY);
  IL_CMD(C_PHY_CALIBRATION);
  IL_CMD(N_RX_PHY);
  IL_CMD(N_RX_MPDU);
  IL_CMD(N_RX);
  IL_CMD(N_COMPRESSED_BA);
 default:
  return "UNKNOWN";

 }
}
