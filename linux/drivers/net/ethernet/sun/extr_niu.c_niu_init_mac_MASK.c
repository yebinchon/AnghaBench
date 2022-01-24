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
struct niu {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct niu*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct niu*,int) ; 
 int FUNC2 (struct niu*) ; 
 int /*<<< orphan*/  FUNC3 (struct niu*) ; 
 int /*<<< orphan*/  FUNC4 (struct niu*) ; 
 int /*<<< orphan*/  FUNC5 (struct niu*) ; 
 int FUNC6 (struct niu*) ; 
 int FUNC7 (struct niu*) ; 

__attribute__((used)) static int FUNC8(struct niu *np)
{
	int err;

	FUNC5(np);
	err = FUNC2(np);
	if (err)
		return err;

	err = FUNC7(np);
	if (err)
		return err;
	FUNC4(np);
	err = FUNC6(np);
	if (err)
		return err;
	FUNC3(np);

	/* This looks hookey but the RX MAC reset we just did will
	 * undo some of the state we setup in niu_init_tx_mac() so we
	 * have to call it again.  In particular, the RX MAC reset will
	 * set the XMAC_MAX register back to it's default value.
	 */
	FUNC4(np);
	FUNC1(np, 1);

	FUNC0(np, 1);

	return 0;
}