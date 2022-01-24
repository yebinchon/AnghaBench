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
typedef  int u8 ;
struct ksz_device {int mib_port_cnt; int /*<<< orphan*/ * regmap; } ;

/* Variables and functions */
 int PORT_LEARN_DISABLE ; 
 int /*<<< orphan*/  P_STP_CTRL ; 
 int /*<<< orphan*/  REG_SW_LUE_CTRL_2 ; 
 int /*<<< orphan*/  SW_FLUSH_DYN_MAC_TABLE ; 
 int SW_FLUSH_OPTION_DYN_MAC ; 
 int SW_FLUSH_OPTION_M ; 
 int SW_FLUSH_OPTION_S ; 
 int /*<<< orphan*/  SW_FLUSH_STP_TABLE ; 
 int /*<<< orphan*/  S_FLUSH_TABLE_CTRL ; 
 int /*<<< orphan*/  FUNC0 (struct ksz_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ksz_device*,int,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct ksz_device*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void FUNC4(struct ksz_device *dev, int port)
{
	u8 data;

	FUNC3(dev->regmap[0], REG_SW_LUE_CTRL_2,
			   SW_FLUSH_OPTION_M << SW_FLUSH_OPTION_S,
			   SW_FLUSH_OPTION_DYN_MAC << SW_FLUSH_OPTION_S);

	if (port < dev->mib_port_cnt) {
		/* flush individual port */
		FUNC1(dev, port, P_STP_CTRL, &data);
		if (!(data & PORT_LEARN_DISABLE))
			FUNC2(dev, port, P_STP_CTRL,
				    data | PORT_LEARN_DISABLE);
		FUNC0(dev, S_FLUSH_TABLE_CTRL, SW_FLUSH_DYN_MAC_TABLE, true);
		FUNC2(dev, port, P_STP_CTRL, data);
	} else {
		/* flush all */
		FUNC0(dev, S_FLUSH_TABLE_CTRL, SW_FLUSH_STP_TABLE, true);
	}
}