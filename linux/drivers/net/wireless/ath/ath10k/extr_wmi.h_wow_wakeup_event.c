
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum wmi_wow_wakeup_event { ____Placeholder_wmi_wow_wakeup_event } wmi_wow_wakeup_event ;


 int C2S (int ) ;
 int WOW_ASSOC_REQ_EVENT ;
 int WOW_AUTH_REQ_EVENT ;
 int WOW_BEACON_EVENT ;
 int WOW_BETTER_AP_EVENT ;
 int WOW_BMISS_EVENT ;
 int WOW_CLIENT_KICKOUT_EVENT ;
 int WOW_CSA_IE_EVENT ;
 int WOW_DEAUTH_RECVD_EVENT ;
 int WOW_DFS_PHYERR_RADAR_EVENT ;
 int WOW_DISASSOC_RECVD_EVENT ;
 int WOW_EAPOL_RECVD_EVENT ;
 int WOW_EVENT_MAX ;
 int WOW_FOURWAY_HSHAKE_EVENT ;
 int WOW_GTK_ERR_EVENT ;
 int WOW_HOST_AUTO_SHUTDOWN_EVENT ;
 int WOW_HTT_EVENT ;
 int WOW_IOAC_EXTEND_EVENT ;
 int WOW_IOAC_MAGIC_EVENT ;
 int WOW_IOAC_SHORT_EVENT ;
 int WOW_IOAC_TIMER_EVENT ;
 int WOW_MAGIC_PKT_RECVD_EVENT ;
 int WOW_NLO_DETECTED_EVENT ;
 int WOW_PATTERN_MATCH_EVENT ;
 int WOW_PROBE_REQ_WPS_IE_EVENT ;
 int WOW_RA_MATCH_EVENT ;

__attribute__((used)) static inline const char *wow_wakeup_event(enum wmi_wow_wakeup_event ev)
{
 switch (ev) {
 C2S(WOW_BMISS_EVENT);
 C2S(WOW_BETTER_AP_EVENT);
 C2S(WOW_DEAUTH_RECVD_EVENT);
 C2S(WOW_MAGIC_PKT_RECVD_EVENT);
 C2S(WOW_GTK_ERR_EVENT);
 C2S(WOW_FOURWAY_HSHAKE_EVENT);
 C2S(WOW_EAPOL_RECVD_EVENT);
 C2S(WOW_NLO_DETECTED_EVENT);
 C2S(WOW_DISASSOC_RECVD_EVENT);
 C2S(WOW_PATTERN_MATCH_EVENT);
 C2S(WOW_CSA_IE_EVENT);
 C2S(WOW_PROBE_REQ_WPS_IE_EVENT);
 C2S(WOW_AUTH_REQ_EVENT);
 C2S(WOW_ASSOC_REQ_EVENT);
 C2S(WOW_HTT_EVENT);
 C2S(WOW_RA_MATCH_EVENT);
 C2S(WOW_HOST_AUTO_SHUTDOWN_EVENT);
 C2S(WOW_IOAC_MAGIC_EVENT);
 C2S(WOW_IOAC_SHORT_EVENT);
 C2S(WOW_IOAC_EXTEND_EVENT);
 C2S(WOW_IOAC_TIMER_EVENT);
 C2S(WOW_DFS_PHYERR_RADAR_EVENT);
 C2S(WOW_BEACON_EVENT);
 C2S(WOW_CLIENT_KICKOUT_EVENT);
 C2S(WOW_EVENT_MAX);
 default:
  return ((void*)0);
 }
}
