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
struct TYPE_2__ {int ctrlmode; } ;
struct peak_canfd_priv {TYPE_1__ can; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int CAN_CTRLMODE_FD ; 
 int CAN_CTRLMODE_FD_NON_ISO ; 
 int PUCAN_FLTSTD_ROW_IDX_MAX ; 
 int /*<<< orphan*/  PUCAN_OPTION_CANDFDISO ; 
 int /*<<< orphan*/  PUCAN_OPTION_ERROR ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,char*,int) ; 
 struct peak_canfd_priv* FUNC2 (struct net_device*) ; 
 int FUNC3 (struct net_device*) ; 
 int FUNC4 (struct peak_canfd_priv*) ; 
 int FUNC5 (struct peak_canfd_priv*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct peak_canfd_priv*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct peak_canfd_priv*) ; 
 int /*<<< orphan*/  FUNC8 (struct peak_canfd_priv*,int,int) ; 
 int FUNC9 (struct peak_canfd_priv*) ; 

__attribute__((used)) static int FUNC10(struct net_device *ndev)
{
	struct peak_canfd_priv *priv = FUNC2(ndev);
	int i, err = 0;

	err = FUNC3(ndev);
	if (err) {
		FUNC1(ndev, "open_candev() failed, error %d\n", err);
		goto err_exit;
	}

	err = FUNC7(priv);
	if (err)
		goto err_close;

	if (priv->can.ctrlmode & CAN_CTRLMODE_FD) {
		if (priv->can.ctrlmode & CAN_CTRLMODE_FD_NON_ISO)
			err = FUNC5(priv, PUCAN_OPTION_CANDFDISO);
		else
			err = FUNC6(priv, PUCAN_OPTION_CANDFDISO);

		if (err)
			goto err_close;
	}

	/* set option: get rx/tx error counters */
	err = FUNC6(priv, PUCAN_OPTION_ERROR);
	if (err)
		goto err_close;

	/* accept all standard CAN ID */
	for (i = 0; i <= PUCAN_FLTSTD_ROW_IDX_MAX; i++)
		FUNC8(priv, i, 0xffffffff);

	err = FUNC4(priv);
	if (err)
		goto err_close;

	/* receiving the RB status says when Tx path is ready */
	err = FUNC9(priv);
	if (!err)
		goto err_exit;

err_close:
	FUNC0(ndev);
err_exit:
	return err;
}