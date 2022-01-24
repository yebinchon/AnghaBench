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
typedef  int u64 ;
typedef  int u32 ;
struct wmi_phyerr_hdr_arg {int num_phyerrs; int buf_len; int tsf_u32; int tsf_l32; void* phyerrs; } ;
struct wmi_phyerr_ev_arg {int hdr_len; int buf_len; int phy_err_code; } ;
struct sk_buff {int dummy; } ;
struct ath10k {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_DBG_WMI ; 
 int /*<<< orphan*/  FUNC0 (struct ath10k*,int /*<<< orphan*/ ) ; 
#define  PHY_ERROR_FALSE_RADAR_EXT 130 
#define  PHY_ERROR_RADAR 129 
#define  PHY_ERROR_SPECTRAL_SCAN 128 
 int /*<<< orphan*/  FUNC1 (struct ath10k*,int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ath10k*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ath10k*,struct wmi_phyerr_ev_arg*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ath10k*,struct wmi_phyerr_ev_arg*,int) ; 
 int FUNC5 (struct ath10k*,void const*,int,struct wmi_phyerr_ev_arg*) ; 
 int FUNC6 (struct ath10k*,struct sk_buff*,struct wmi_phyerr_hdr_arg*) ; 
 int /*<<< orphan*/  phy_errors ; 

void FUNC7(struct ath10k *ar, struct sk_buff *skb)
{
	struct wmi_phyerr_hdr_arg hdr_arg = {};
	struct wmi_phyerr_ev_arg phyerr_arg = {};
	const void *phyerr;
	u32 count, i, buf_len, phy_err_code;
	u64 tsf;
	int left_len, ret;

	FUNC0(ar, phy_errors);

	ret = FUNC6(ar, skb, &hdr_arg);
	if (ret) {
		FUNC2(ar, "failed to parse phyerr event hdr: %d\n", ret);
		return;
	}

	/* Check number of included events */
	count = hdr_arg.num_phyerrs;

	left_len = hdr_arg.buf_len;

	tsf = hdr_arg.tsf_u32;
	tsf <<= 32;
	tsf |= hdr_arg.tsf_l32;

	FUNC1(ar, ATH10K_DBG_WMI,
		   "wmi event phyerr count %d tsf64 0x%llX\n",
		   count, tsf);

	phyerr = hdr_arg.phyerrs;
	for (i = 0; i < count; i++) {
		ret = FUNC5(ar, phyerr, left_len, &phyerr_arg);
		if (ret) {
			FUNC2(ar, "failed to parse phyerr event (%d)\n",
				    i);
			return;
		}

		left_len -= phyerr_arg.hdr_len;
		buf_len = phyerr_arg.buf_len;
		phy_err_code = phyerr_arg.phy_err_code;

		if (left_len < buf_len) {
			FUNC2(ar, "single event (%d) wrong buf len\n", i);
			return;
		}

		left_len -= buf_len;

		switch (phy_err_code) {
		case PHY_ERROR_RADAR:
			FUNC3(ar, &phyerr_arg, tsf);
			break;
		case PHY_ERROR_SPECTRAL_SCAN:
			FUNC4(ar, &phyerr_arg, tsf);
			break;
		case PHY_ERROR_FALSE_RADAR_EXT:
			FUNC3(ar, &phyerr_arg, tsf);
			FUNC4(ar, &phyerr_arg, tsf);
			break;
		default:
			break;
		}

		phyerr = phyerr + phyerr_arg.hdr_len + buf_len;
	}
}