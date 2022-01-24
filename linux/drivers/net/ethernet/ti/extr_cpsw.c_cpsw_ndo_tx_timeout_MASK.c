#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  tx_errors; } ;
struct net_device {TYPE_2__ stats; } ;
struct cpsw_priv {struct cpsw_common* cpsw; } ;
struct cpsw_common {int tx_ch_num; TYPE_1__* txv; } ;
struct TYPE_3__ {int /*<<< orphan*/  ch; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cpsw_priv*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct cpsw_common*) ; 
 int /*<<< orphan*/  FUNC4 (struct cpsw_common*) ; 
 struct cpsw_priv* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  tx_err ; 

__attribute__((used)) static void FUNC8(struct net_device *ndev)
{
	struct cpsw_priv *priv = FUNC5(ndev);
	struct cpsw_common *cpsw = priv->cpsw;
	int ch;

	FUNC2(priv, tx_err, "transmit timeout, restarting dma\n");
	ndev->stats.tx_errors++;
	FUNC3(cpsw);
	for (ch = 0; ch < cpsw->tx_ch_num; ch++) {
		FUNC1(cpsw->txv[ch].ch);
		FUNC0(cpsw->txv[ch].ch);
	}

	FUNC4(cpsw);
	FUNC6(ndev);
	FUNC7(ndev);
}