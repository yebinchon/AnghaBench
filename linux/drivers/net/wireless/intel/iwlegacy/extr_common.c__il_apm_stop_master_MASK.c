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
struct il_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CSR_RESET ; 
 int /*<<< orphan*/  CSR_RESET_REG_FLAG_MASTER_DISABLED ; 
 int /*<<< orphan*/  CSR_RESET_REG_FLAG_STOP_MASTER ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (struct il_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct il_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct il_priv *il)
{
	int ret = 0;

	/* stop device's busmaster DMA activity */
	FUNC3(il, CSR_RESET, CSR_RESET_REG_FLAG_STOP_MASTER);

	ret =
	    FUNC2(il, CSR_RESET, CSR_RESET_REG_FLAG_MASTER_DISABLED,
			 CSR_RESET_REG_FLAG_MASTER_DISABLED, 100);
	if (ret < 0)
		FUNC1("Master Disable Timed Out, 100 usec\n");

	FUNC0("stop master\n");

	return ret;
}