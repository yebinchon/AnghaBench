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
struct lan78xx_priv {int /*<<< orphan*/  dataport_mutex; } ;
struct lan78xx_net {int /*<<< orphan*/  intf; scalar_t__* data; } ;

/* Variables and functions */
 int /*<<< orphan*/  DP_ADDR ; 
 int /*<<< orphan*/  DP_CMD ; 
 int DP_CMD_WRITE_ ; 
 int /*<<< orphan*/  DP_DATA ; 
 int /*<<< orphan*/  DP_SEL ; 
 int DP_SEL_RSEL_MASK_ ; 
 int FUNC0 (struct lan78xx_net*) ; 
 int FUNC1 (struct lan78xx_net*,int /*<<< orphan*/ ,int*) ; 
 int FUNC2 (struct lan78xx_net*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct lan78xx_net *dev, u32 ram_select,
				  u32 addr, u32 length, u32 *buf)
{
	struct lan78xx_priv *pdata = (struct lan78xx_priv *)(dev->data[0]);
	u32 dp_sel;
	int i, ret;

	if (FUNC5(dev->intf) < 0)
			return 0;

	FUNC3(&pdata->dataport_mutex);

	ret = FUNC0(dev);
	if (ret < 0)
		goto done;

	ret = FUNC1(dev, DP_SEL, &dp_sel);

	dp_sel &= ~DP_SEL_RSEL_MASK_;
	dp_sel |= ram_select;
	ret = FUNC2(dev, DP_SEL, dp_sel);

	for (i = 0; i < length; i++) {
		ret = FUNC2(dev, DP_ADDR, addr + i);

		ret = FUNC2(dev, DP_DATA, buf[i]);

		ret = FUNC2(dev, DP_CMD, DP_CMD_WRITE_);

		ret = FUNC0(dev);
		if (ret < 0)
			goto done;
	}

done:
	FUNC4(&pdata->dataport_mutex);
	FUNC6(dev->intf);

	return ret;
}