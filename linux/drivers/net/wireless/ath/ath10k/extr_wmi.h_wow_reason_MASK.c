#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  enum wmi_wow_wake_reason { ____Placeholder_wmi_wow_wake_reason } wmi_wow_wake_reason ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WOW_REASON_AP_ASSOC_LOST ; 
 int /*<<< orphan*/  WOW_REASON_ASSOC_REQ_RECV ; 
 int /*<<< orphan*/  WOW_REASON_AUTH_REQ_RECV ; 
 int /*<<< orphan*/  WOW_REASON_BEACON_RECV ; 
 int /*<<< orphan*/  WOW_REASON_CLIENT_KICKOUT_EVENT ; 
 int /*<<< orphan*/  WOW_REASON_CSA_EVENT ; 
 int /*<<< orphan*/  WOW_REASON_DEAUTH_RECVD ; 
 int /*<<< orphan*/  WOW_REASON_DEBUG_TEST ; 
 int /*<<< orphan*/  WOW_REASON_DFS_PHYERR_RADADR_EVENT ; 
 int /*<<< orphan*/  WOW_REASON_DISASSOC_RECVD ; 
 int /*<<< orphan*/  WOW_REASON_EAP_REQ ; 
 int /*<<< orphan*/  WOW_REASON_FOURWAY_HS_RECV ; 
 int /*<<< orphan*/  WOW_REASON_GTK_HS_ERR ; 
 int /*<<< orphan*/  WOW_REASON_HOST_AUTO_SHUTDOWN ; 
 int /*<<< orphan*/  WOW_REASON_HTT_EVENT ; 
 int /*<<< orphan*/  WOW_REASON_IOAC_EXTEND_EVENT ; 
 int /*<<< orphan*/  WOW_REASON_IOAC_MAGIC_EVENT ; 
 int /*<<< orphan*/  WOW_REASON_IOAC_SHORT_EVENT ; 
 int /*<<< orphan*/  WOW_REASON_IOAC_TIMER_EVENT ; 
 int /*<<< orphan*/  WOW_REASON_LOW_RSSI ; 
 int /*<<< orphan*/  WOW_REASON_NLOD ; 
 int /*<<< orphan*/  WOW_REASON_P2P_DISC ; 
 int /*<<< orphan*/  WOW_REASON_PATTERN_MATCH_FOUND ; 
 int /*<<< orphan*/  WOW_REASON_PROBE_REQ_WPS_IE_RECV ; 
 int /*<<< orphan*/  WOW_REASON_RA_MATCH ; 
 int /*<<< orphan*/  WOW_REASON_RECV_MAGIC_PATTERN ; 
 int /*<<< orphan*/  WOW_REASON_ROAM_HO ; 
 int /*<<< orphan*/  WOW_REASON_TIMER_INTR_RECV ; 
 int /*<<< orphan*/  WOW_REASON_UNSPECIFIED ; 
 int /*<<< orphan*/  WOW_REASON_WLAN_HB ; 

__attribute__((used)) static inline const char *FUNC1(enum wmi_wow_wake_reason reason)
{
	switch (reason) {
	FUNC0(WOW_REASON_UNSPECIFIED);
	FUNC0(WOW_REASON_NLOD);
	FUNC0(WOW_REASON_AP_ASSOC_LOST);
	FUNC0(WOW_REASON_LOW_RSSI);
	FUNC0(WOW_REASON_DEAUTH_RECVD);
	FUNC0(WOW_REASON_DISASSOC_RECVD);
	FUNC0(WOW_REASON_GTK_HS_ERR);
	FUNC0(WOW_REASON_EAP_REQ);
	FUNC0(WOW_REASON_FOURWAY_HS_RECV);
	FUNC0(WOW_REASON_TIMER_INTR_RECV);
	FUNC0(WOW_REASON_PATTERN_MATCH_FOUND);
	FUNC0(WOW_REASON_RECV_MAGIC_PATTERN);
	FUNC0(WOW_REASON_P2P_DISC);
	FUNC0(WOW_REASON_WLAN_HB);
	FUNC0(WOW_REASON_CSA_EVENT);
	FUNC0(WOW_REASON_PROBE_REQ_WPS_IE_RECV);
	FUNC0(WOW_REASON_AUTH_REQ_RECV);
	FUNC0(WOW_REASON_ASSOC_REQ_RECV);
	FUNC0(WOW_REASON_HTT_EVENT);
	FUNC0(WOW_REASON_RA_MATCH);
	FUNC0(WOW_REASON_HOST_AUTO_SHUTDOWN);
	FUNC0(WOW_REASON_IOAC_MAGIC_EVENT);
	FUNC0(WOW_REASON_IOAC_SHORT_EVENT);
	FUNC0(WOW_REASON_IOAC_EXTEND_EVENT);
	FUNC0(WOW_REASON_IOAC_TIMER_EVENT);
	FUNC0(WOW_REASON_ROAM_HO);
	FUNC0(WOW_REASON_DFS_PHYERR_RADADR_EVENT);
	FUNC0(WOW_REASON_BEACON_RECV);
	FUNC0(WOW_REASON_CLIENT_KICKOUT_EVENT);
	FUNC0(WOW_REASON_DEBUG_TEST);
	default:
		return NULL;
	}
}