#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
typedef  int u16 ;
struct TYPE_2__ {int /*<<< orphan*/  flag; } ;
struct fmtx_data {unsigned long tx_frq; int audio_io; TYPE_1__ rds; int /*<<< orphan*/  aud_mode; int /*<<< orphan*/  preemph; int /*<<< orphan*/  pwr_lvl; } ;
struct fmdev {int /*<<< orphan*/  flag; struct fmtx_data tx_data; } ;
typedef  int /*<<< orphan*/  payload ;

/* Variables and functions */
 int /*<<< orphan*/  CHANL_SET ; 
 int FM_BL_EVENT ; 
 int /*<<< orphan*/  FM_CORE_TX_XMITING ; 
 int FM_FR_EVENT ; 
 int /*<<< orphan*/  FM_RDS_DISABLE ; 
 int /*<<< orphan*/  FM_STEREO_MODE ; 
 int /*<<< orphan*/  INT_MASK_SET ; 
 int /*<<< orphan*/  REG_WR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct fmdev*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct fmdev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct fmdev*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct fmdev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,long) ; 
 int /*<<< orphan*/  FUNC6 (struct fmdev*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC8(struct fmdev *fmdev, u32 freq_to_set)
{
	struct fmtx_data *tx = &fmdev->tx_data;
	u16 payload, chanl_index;
	int ret;

	if (FUNC7(FM_CORE_TX_XMITING, &fmdev->flag)) {
		FUNC1(fmdev, 0);
		FUNC0(FM_CORE_TX_XMITING, &fmdev->flag);
	}

	/* Enable FR, BL interrupts */
	payload = (FM_FR_EVENT | FM_BL_EVENT);
	ret = FUNC4(fmdev, INT_MASK_SET, REG_WR, &payload,
			sizeof(payload), NULL, NULL);
	if (ret < 0)
		return ret;

	tx->tx_frq = (unsigned long)freq_to_set;
	FUNC5("tx: freq_to_set %ld\n", (long int)tx->tx_frq);

	chanl_index = freq_to_set / 10;

	/* Set current tuner channel */
	payload = chanl_index;
	ret = FUNC4(fmdev, CHANL_SET, REG_WR, &payload,
			sizeof(payload), NULL, NULL);
	if (ret < 0)
		return ret;

	FUNC3(fmdev, tx->pwr_lvl);
	FUNC2(fmdev, tx->preemph);

	tx->audio_io = 0x01;	/* I2S */
	FUNC6(fmdev);

	FUNC1(fmdev, 0x01);	/* Enable transmission */

	tx->aud_mode = FM_STEREO_MODE;
	tx->rds.flag = FM_RDS_DISABLE;

	return 0;
}