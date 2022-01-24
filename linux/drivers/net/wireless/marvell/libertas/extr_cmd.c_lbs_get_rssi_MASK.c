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
struct lbs_private {int dummy; } ;
struct TYPE_2__ {void* size; } ;
struct cmd_ds_802_11_rssi {void* nf; void* n_or_snr; TYPE_1__ hdr; } ;
typedef  int /*<<< orphan*/  s8 ;
typedef  int /*<<< orphan*/  cmd ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CMD_802_11_RSSI ; 
 void* FUNC3 (int) ; 
 int FUNC4 (struct lbs_private*,int /*<<< orphan*/ ,struct cmd_ds_802_11_rssi*) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (struct cmd_ds_802_11_rssi*,int /*<<< orphan*/ ,int) ; 

int FUNC7(struct lbs_private *priv, s8 *rssi, s8 *nf)
{
	struct cmd_ds_802_11_rssi cmd;
	int ret = 0;

	FUNC0(rssi == NULL);
	FUNC0(nf == NULL);

	FUNC6(&cmd, 0, sizeof(cmd));
	cmd.hdr.size = FUNC3(sizeof(cmd));
	/* Average SNR over last 8 beacons */
	cmd.n_or_snr = FUNC3(8);

	ret = FUNC4(priv, CMD_802_11_RSSI, &cmd);
	if (ret == 0) {
		*nf = FUNC1(FUNC5(cmd.nf));
		*rssi = FUNC2(FUNC5(cmd.n_or_snr), FUNC5(cmd.nf));
	}

	return ret;
}