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
struct ath10k_sdio {int swap_mbox; } ;
struct ath10k {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_DBG_SDIO ; 
 int HI_ACS_FLAGS_SDIO_SWAP_MAILBOX_FW_ACK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ath10k*,int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (struct ath10k*,int,int*) ; 
 struct ath10k_sdio* FUNC3 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC4 (struct ath10k*,char*,int) ; 
 int /*<<< orphan*/  hi_acs_flags ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct ath10k *ar)
{
	struct ath10k_sdio *ar_sdio = FUNC3(ar);
	u32 addr, val;
	int ret = 0;

	addr = FUNC5(FUNC0(hi_acs_flags));

	ret = FUNC2(ar, addr, &val);
	if (ret) {
		FUNC4(ar, "unable to read hi_acs_flags : %d\n", ret);
		return ret;
	}

	if (val & HI_ACS_FLAGS_SDIO_SWAP_MAILBOX_FW_ACK) {
		FUNC1(ar, ATH10K_DBG_SDIO,
			   "sdio mailbox swap service enabled\n");
		ar_sdio->swap_mbox = true;
	} else {
		FUNC1(ar, ATH10K_DBG_SDIO,
			   "sdio mailbox swap service disabled\n");
		ar_sdio->swap_mbox = false;
	}

	return 0;
}