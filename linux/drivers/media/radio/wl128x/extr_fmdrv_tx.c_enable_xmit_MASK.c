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
typedef  void* u8 ;
typedef  void* u16 ;
struct fmtx_data {void* xmit_state; } ;
struct fmdev {int /*<<< orphan*/  flag; int /*<<< orphan*/  maintask_comp; struct fmtx_data tx_data; } ;
typedef  int /*<<< orphan*/  payload ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FM_CORE_TX_XMITING ; 
 int /*<<< orphan*/  FM_DRV_TX_TIMEOUT ; 
 void* FM_POW_ENB_EVENT ; 
 int /*<<< orphan*/  INT_MASK_SET ; 
 int /*<<< orphan*/  POWER_ENB_SET ; 
 int /*<<< orphan*/  REG_WR ; 
 int FUNC0 (struct fmdev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void**,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 unsigned long FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct fmdev *fmdev, u8 new_xmit_state)
{
	struct fmtx_data *tx = &fmdev->tx_data;
	unsigned long timeleft;
	u16 payload;
	int ret;

	/* Enable POWER_ENB interrupts */
	payload = FM_POW_ENB_EVENT;
	ret = FUNC0(fmdev, INT_MASK_SET, REG_WR, &payload,
			sizeof(payload), NULL, NULL);
	if (ret < 0)
		return ret;

	/* Set Power Enable */
	payload = new_xmit_state;
	ret = FUNC0(fmdev, POWER_ENB_SET, REG_WR, &payload,
			sizeof(payload), NULL, NULL);
	if (ret < 0)
		return ret;

	/* Wait for Power Enabled */
	FUNC2(&fmdev->maintask_comp);
	timeleft = FUNC5(&fmdev->maintask_comp,
			FM_DRV_TX_TIMEOUT);
	if (!timeleft) {
		FUNC1("Timeout(%d sec),didn't get tune ended interrupt\n",
			   FUNC3(FM_DRV_TX_TIMEOUT) / 1000);
		return -ETIMEDOUT;
	}

	FUNC4(FM_CORE_TX_XMITING, &fmdev->flag);
	tx->xmit_state = new_xmit_state;

	return 0;
}