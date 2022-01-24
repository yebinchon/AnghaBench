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
struct rtl8169_private {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EPHY_RXER_NUM ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  OCPAR ; 
 int /*<<< orphan*/  OCPAR_GPHY_READ_CMD ; 
 int /*<<< orphan*/  OCPDR ; 
 int OCPDR_DATA_MASK ; 
 int /*<<< orphan*/  OCPDR_READ_CMD ; 
 int FUNC0 (struct rtl8169_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rtl8169_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct rtl8169_private*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rtl_ocpar_cond ; 
 scalar_t__ FUNC4 (struct rtl8169_private*,int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static int FUNC5(struct rtl8169_private *tp, int reg)
{
	FUNC3(tp, reg, OCPDR_READ_CMD);

	FUNC2(1);
	FUNC1(tp, OCPAR, OCPAR_GPHY_READ_CMD);
	FUNC1(tp, EPHY_RXER_NUM, 0);

	return FUNC4(tp, &rtl_ocpar_cond, 1000, 100) ?
		FUNC0(tp, OCPDR) & OCPDR_DATA_MASK : -ETIMEDOUT;
}