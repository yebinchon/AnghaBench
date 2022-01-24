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
typedef  int u32 ;
struct slic_stats {int dummy; } ;
struct slic_rx_info_oasis {int /*<<< orphan*/  frame_status_b; int /*<<< orphan*/  frame_status; } ;
struct slic_rx_info_mojave {int /*<<< orphan*/  frame_status; } ;
struct slic_device {scalar_t__ model; struct slic_stats stats; } ;
struct sk_buff {scalar_t__ data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct slic_stats*,int /*<<< orphan*/ ) ; 
 scalar_t__ SLIC_MODEL_OASIS ; 
 int SLIC_VGBSTAT_LBOFLO ; 
 int SLIC_VGBSTAT_LCODERR ; 
 int SLIC_VGBSTAT_LCRCERR ; 
 int SLIC_VGBSTAT_LDBLNBL ; 
 int SLIC_VGBSTAT_LDEARLY ; 
 int SLIC_VGBSTAT_LERRMSK ; 
 int SLIC_VGBSTAT_LNKERR ; 
 int SLIC_VGBSTAT_LOFLO ; 
 int SLIC_VGBSTAT_LUFLO ; 
 int SLIC_VGBSTAT_NCSERR ; 
 int SLIC_VGBSTAT_NERRMSK ; 
 int SLIC_VGBSTAT_NERRSHFT ; 
 int SLIC_VGBSTAT_NETERR ; 
 int SLIC_VGBSTAT_NHLEN ; 
 int SLIC_VGBSTAT_NUFLOW ; 
 int SLIC_VGBSTAT_XCSERR ; 
 int SLIC_VGBSTAT_XERRSHFT ; 
 int SLIC_VGBSTAT_XHLEN ; 
 int SLIC_VGBSTAT_XPERR ; 
 int SLIC_VGBSTAT_XUFLOW ; 
 int SLIC_VRHSTATB_802UE ; 
 int SLIC_VRHSTATB_BUFF ; 
 int SLIC_VRHSTATB_CARRE ; 
 int SLIC_VRHSTATB_CODE ; 
 int SLIC_VRHSTATB_CRC ; 
 int SLIC_VRHSTATB_DRBL ; 
 int SLIC_VRHSTATB_IPCSUM ; 
 int SLIC_VRHSTATB_IPHERR ; 
 int SLIC_VRHSTATB_IPLERR ; 
 int SLIC_VRHSTATB_RCVE ; 
 int SLIC_VRHSTATB_TPCSUM ; 
 int SLIC_VRHSTATB_TPHLEN ; 
 int SLIC_VRHSTAT_802OE ; 
 int SLIC_VRHSTAT_TPOFLO ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rx_buffoflow ; 
 int /*<<< orphan*/  rx_crc ; 
 int /*<<< orphan*/  rx_drbl ; 
 int /*<<< orphan*/  rx_early ; 
 int /*<<< orphan*/  rx_errors ; 
 int /*<<< orphan*/  rx_ipcsum ; 
 int /*<<< orphan*/  rx_iphlen ; 
 int /*<<< orphan*/  rx_iplen ; 
 int /*<<< orphan*/  rx_lcode ; 
 int /*<<< orphan*/  rx_oflow802 ; 
 int /*<<< orphan*/  rx_tpcsum ; 
 int /*<<< orphan*/  rx_tphlen ; 
 int /*<<< orphan*/  rx_tpoflow ; 
 int /*<<< orphan*/  rx_uflow802 ; 
 int /*<<< orphan*/  tx_carrier ; 

__attribute__((used)) static void FUNC2(struct slic_device *sdev,
				    struct sk_buff *skb)
{
	struct slic_stats *stats = &sdev->stats;

	if (sdev->model == SLIC_MODEL_OASIS) {
		struct slic_rx_info_oasis *info;
		u32 status_b;
		u32 status;

		info = (struct slic_rx_info_oasis *)skb->data;
		status = FUNC1(info->frame_status);
		status_b = FUNC1(info->frame_status_b);
		/* transport layer */
		if (status_b & SLIC_VRHSTATB_TPCSUM)
			FUNC0(stats, rx_tpcsum);
		if (status & SLIC_VRHSTAT_TPOFLO)
			FUNC0(stats, rx_tpoflow);
		if (status_b & SLIC_VRHSTATB_TPHLEN)
			FUNC0(stats, rx_tphlen);
		/* ip layer */
		if (status_b & SLIC_VRHSTATB_IPCSUM)
			FUNC0(stats, rx_ipcsum);
		if (status_b & SLIC_VRHSTATB_IPLERR)
			FUNC0(stats, rx_iplen);
		if (status_b & SLIC_VRHSTATB_IPHERR)
			FUNC0(stats, rx_iphlen);
		/* link layer */
		if (status_b & SLIC_VRHSTATB_RCVE)
			FUNC0(stats, rx_early);
		if (status_b & SLIC_VRHSTATB_BUFF)
			FUNC0(stats, rx_buffoflow);
		if (status_b & SLIC_VRHSTATB_CODE)
			FUNC0(stats, rx_lcode);
		if (status_b & SLIC_VRHSTATB_DRBL)
			FUNC0(stats, rx_drbl);
		if (status_b & SLIC_VRHSTATB_CRC)
			FUNC0(stats, rx_crc);
		if (status & SLIC_VRHSTAT_802OE)
			FUNC0(stats, rx_oflow802);
		if (status_b & SLIC_VRHSTATB_802UE)
			FUNC0(stats, rx_uflow802);
		if (status_b & SLIC_VRHSTATB_CARRE)
			FUNC0(stats, tx_carrier);
	} else { /* mojave */
		struct slic_rx_info_mojave *info;
		u32 status;

		info = (struct slic_rx_info_mojave *)skb->data;
		status = FUNC1(info->frame_status);
		/* transport layer */
		if (status & SLIC_VGBSTAT_XPERR) {
			u32 xerr = status >> SLIC_VGBSTAT_XERRSHFT;

			if (xerr == SLIC_VGBSTAT_XCSERR)
				FUNC0(stats, rx_tpcsum);
			if (xerr == SLIC_VGBSTAT_XUFLOW)
				FUNC0(stats, rx_tpoflow);
			if (xerr == SLIC_VGBSTAT_XHLEN)
				FUNC0(stats, rx_tphlen);
		}
		/* ip layer */
		if (status & SLIC_VGBSTAT_NETERR) {
			u32 nerr = status >> SLIC_VGBSTAT_NERRSHFT &
				   SLIC_VGBSTAT_NERRMSK;

			if (nerr == SLIC_VGBSTAT_NCSERR)
				FUNC0(stats, rx_ipcsum);
			if (nerr == SLIC_VGBSTAT_NUFLOW)
				FUNC0(stats, rx_iplen);
			if (nerr == SLIC_VGBSTAT_NHLEN)
				FUNC0(stats, rx_iphlen);
		}
		/* link layer */
		if (status & SLIC_VGBSTAT_LNKERR) {
			u32 lerr = status & SLIC_VGBSTAT_LERRMSK;

			if (lerr == SLIC_VGBSTAT_LDEARLY)
				FUNC0(stats, rx_early);
			if (lerr == SLIC_VGBSTAT_LBOFLO)
				FUNC0(stats, rx_buffoflow);
			if (lerr == SLIC_VGBSTAT_LCODERR)
				FUNC0(stats, rx_lcode);
			if (lerr == SLIC_VGBSTAT_LDBLNBL)
				FUNC0(stats, rx_drbl);
			if (lerr == SLIC_VGBSTAT_LCRCERR)
				FUNC0(stats, rx_crc);
			if (lerr == SLIC_VGBSTAT_LOFLO)
				FUNC0(stats, rx_oflow802);
			if (lerr == SLIC_VGBSTAT_LUFLO)
				FUNC0(stats, rx_uflow802);
		}
	}
	FUNC0(stats, rx_errors);
}