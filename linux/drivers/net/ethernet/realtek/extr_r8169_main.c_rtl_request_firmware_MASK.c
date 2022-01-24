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
struct rtl_fw {int /*<<< orphan*/  dev; scalar_t__ fw_name; int /*<<< orphan*/  mac_mcu_read; int /*<<< orphan*/  mac_mcu_write; int /*<<< orphan*/  phy_read; int /*<<< orphan*/  phy_write; } ;
struct rtl8169_private {struct rtl_fw* rtl_fw; scalar_t__ fw_name; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  ifup ; 
 int /*<<< orphan*/  FUNC0 (struct rtl_fw*) ; 
 struct rtl_fw* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mac_mcu_read ; 
 int /*<<< orphan*/  mac_mcu_write ; 
 int /*<<< orphan*/  FUNC2 (struct rtl8169_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (struct rtl_fw*) ; 
 int /*<<< orphan*/  rtl_readphy ; 
 int /*<<< orphan*/  rtl_writephy ; 
 int /*<<< orphan*/  FUNC4 (struct rtl8169_private*) ; 

__attribute__((used)) static void FUNC5(struct rtl8169_private *tp)
{
	struct rtl_fw *rtl_fw;

	/* firmware loaded already or no firmware available */
	if (tp->rtl_fw || !tp->fw_name)
		return;

	rtl_fw = FUNC1(sizeof(*rtl_fw), GFP_KERNEL);
	if (!rtl_fw) {
		FUNC2(tp, ifup, tp->dev, "Unable to load firmware, out of memory\n");
		return;
	}

	rtl_fw->phy_write = rtl_writephy;
	rtl_fw->phy_read = rtl_readphy;
	rtl_fw->mac_mcu_write = mac_mcu_write;
	rtl_fw->mac_mcu_read = mac_mcu_read;
	rtl_fw->fw_name = tp->fw_name;
	rtl_fw->dev = FUNC4(tp);

	if (FUNC3(rtl_fw))
		FUNC0(rtl_fw);
	else
		tp->rtl_fw = rtl_fw;
}