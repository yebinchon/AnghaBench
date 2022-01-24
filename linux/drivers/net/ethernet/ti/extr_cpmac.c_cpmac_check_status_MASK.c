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
struct net_device {int dummy; } ;
struct cpmac_priv {int /*<<< orphan*/  regs; int /*<<< orphan*/  reset_pending; int /*<<< orphan*/  reset_work; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPMAC_MAC_INT_CLEAR ; 
 int /*<<< orphan*/  CPMAC_MAC_STATUS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 () ; 
 struct cpmac_priv* FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*,char*,int,int,int) ; 
 scalar_t__ FUNC8 (struct cpmac_priv*) ; 
 int /*<<< orphan*/  FUNC9 (struct cpmac_priv*) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC13(struct net_device *dev)
{
	struct cpmac_priv *priv = FUNC6(dev);

	u32 macstatus = FUNC3(priv->regs, CPMAC_MAC_STATUS);
	int rx_channel = (macstatus >> 8) & 7;
	int rx_code = (macstatus >> 12) & 15;
	int tx_channel = (macstatus >> 16) & 7;
	int tx_code = (macstatus >> 20) & 15;

	if (rx_code || tx_code) {
		if (FUNC8(priv) && FUNC5()) {
			/* Can't find any documentation on what these
			 * error codes actually are. So just log them and hope..
			 */
			if (rx_code)
				FUNC7(dev, "host error %d on rx "
					"channel %d (macstatus %08x), resetting\n",
					rx_code, rx_channel, macstatus);
			if (tx_code)
				FUNC7(dev, "host error %d on tx "
					"channel %d (macstatus %08x), resetting\n",
					tx_code, tx_channel, macstatus);
		}

		FUNC10(dev);
		FUNC2(dev);
		if (FUNC11(&priv->reset_work))
			FUNC0(&priv->reset_pending);
		if (FUNC12(FUNC9(priv)))
			FUNC1(dev);
	}
	FUNC4(priv->regs, CPMAC_MAC_INT_CLEAR, 0xff);
}