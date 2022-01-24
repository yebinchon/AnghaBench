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
struct smsc911x_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RX_DATA_FIFO ; 
 int /*<<< orphan*/  RX_DP_CTRL ; 
 unsigned int RX_DP_CTRL_RX_FFWD_ ; 
 int /*<<< orphan*/  FUNC0 (struct smsc911x_data*,int /*<<< orphan*/ ,char*,unsigned int) ; 
 int /*<<< orphan*/  hw ; 
 scalar_t__ FUNC1 (int) ; 
 unsigned int FUNC2 (struct smsc911x_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct smsc911x_data*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static void
FUNC6(struct smsc911x_data *pdata, unsigned int pktwords)
{
	if (FUNC1(pktwords >= 4)) {
		unsigned int timeout = 500;
		unsigned int val;
		FUNC3(pdata, RX_DP_CTRL, RX_DP_CTRL_RX_FFWD_);
		do {
			FUNC4(1);
			val = FUNC2(pdata, RX_DP_CTRL);
		} while ((val & RX_DP_CTRL_RX_FFWD_) && --timeout);

		if (FUNC5(timeout == 0))
			FUNC0(pdata, hw, "Timed out waiting for "
				  "RX FFWD to finish, RX_DP_CTRL: 0x%08X", val);
	} else {
		unsigned int temp;
		while (pktwords--)
			temp = FUNC2(pdata, RX_DATA_FIFO);
	}
}