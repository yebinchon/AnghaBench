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
struct wmi_phyerr_ev_arg {int hdr_len; int /*<<< orphan*/  phy_err_code; void** nf_chains; int /*<<< orphan*/  buf; void* buf_len; int /*<<< orphan*/  chan_width_mhz; int /*<<< orphan*/  rssi_combined; void* freq2; void* freq1; void* tsf_timestamp; } ;
struct wmi_10_4_phyerr_event {int /*<<< orphan*/ * phy_err_mask; int /*<<< orphan*/ * nf_chains; int /*<<< orphan*/  buf; int /*<<< orphan*/  buf_len; int /*<<< orphan*/  chan_width_mhz; int /*<<< orphan*/  rssi_combined; int /*<<< orphan*/  freq2; int /*<<< orphan*/  freq1; int /*<<< orphan*/  tsf_timestamp; } ;
struct ath10k {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int PHY_ERROR_10_4_RADAR_MASK ; 
 int PHY_ERROR_10_4_SPECTRAL_SCAN_MASK ; 
 int /*<<< orphan*/  PHY_ERROR_RADAR ; 
 int /*<<< orphan*/  PHY_ERROR_SPECTRAL_SCAN ; 
 int /*<<< orphan*/  PHY_ERROR_UNKNOWN ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ath10k*,char*,int,int) ; 

__attribute__((used)) static int FUNC3(struct ath10k *ar,
					     const void *phyerr_buf,
					     int left_len,
					     struct wmi_phyerr_ev_arg *arg)
{
	const struct wmi_10_4_phyerr_event *phyerr = phyerr_buf;
	u32 phy_err_mask;
	int i;

	if (left_len < sizeof(*phyerr)) {
		FUNC2(ar, "wrong phyerr event head len %d (need: >=%zd)\n",
			    left_len, sizeof(*phyerr));
		return -EINVAL;
	}

	arg->tsf_timestamp = FUNC1(phyerr->tsf_timestamp);
	arg->freq1 = FUNC0(phyerr->freq1);
	arg->freq2 = FUNC0(phyerr->freq2);
	arg->rssi_combined = phyerr->rssi_combined;
	arg->chan_width_mhz = phyerr->chan_width_mhz;
	arg->buf_len = FUNC1(phyerr->buf_len);
	arg->buf = phyerr->buf;
	arg->hdr_len = sizeof(*phyerr);

	for (i = 0; i < 4; i++)
		arg->nf_chains[i] = FUNC0(phyerr->nf_chains[i]);

	phy_err_mask = FUNC1(phyerr->phy_err_mask[0]);

	if (phy_err_mask & PHY_ERROR_10_4_SPECTRAL_SCAN_MASK)
		arg->phy_err_code = PHY_ERROR_SPECTRAL_SCAN;
	else if (phy_err_mask & PHY_ERROR_10_4_RADAR_MASK)
		arg->phy_err_code = PHY_ERROR_RADAR;
	else
		arg->phy_err_code = PHY_ERROR_UNKNOWN;

	return 0;
}