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
struct rtl8169_private {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EPHY_RXER_NUM ; 
 int /*<<< orphan*/  OCPAR ; 
 int OCPAR_GPHY_WRITE_CMD ; 
 int /*<<< orphan*/  OCPDR ; 
 int OCPDR_GPHY_REG_SHIFT ; 
 int OCPDR_REG_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct rtl8169_private*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  rtl_ocpar_cond ; 
 int /*<<< orphan*/  FUNC1 (struct rtl8169_private*,int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static void FUNC2(struct rtl8169_private *tp, int reg, u32 data)
{
	FUNC0(tp, OCPDR, data | ((reg & OCPDR_REG_MASK) << OCPDR_GPHY_REG_SHIFT));
	FUNC0(tp, OCPAR, OCPAR_GPHY_WRITE_CMD);
	FUNC0(tp, EPHY_RXER_NUM, 0);

	FUNC1(tp, &rtl_ocpar_cond, 1000, 100);
}