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
typedef  int /*<<< orphan*/  u32 ;
typedef  int u16 ;
struct ksz_device {int /*<<< orphan*/  vlan_mutex; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  REG_SW_VLAN_CTRL ; 
 int /*<<< orphan*/  REG_SW_VLAN_ENTRY_INDEX__2 ; 
 int /*<<< orphan*/  REG_SW_VLAN_ENTRY_PORTS__4 ; 
 int /*<<< orphan*/  REG_SW_VLAN_ENTRY_UNTAG__4 ; 
 int /*<<< orphan*/  REG_SW_VLAN_ENTRY__4 ; 
 int VLAN_INDEX_M ; 
 int VLAN_READ ; 
 int VLAN_START ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct ksz_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct ksz_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ksz_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ksz_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct ksz_device *dev, u16 vid,
				  u32 *vlan_table)
{
	int ret;

	FUNC5(&dev->vlan_mutex);

	FUNC3(dev, REG_SW_VLAN_ENTRY_INDEX__2, vid & VLAN_INDEX_M);
	FUNC4(dev, REG_SW_VLAN_CTRL, VLAN_READ | VLAN_START);

	/* wait to be cleared */
	ret = FUNC1(dev);
	if (ret) {
		FUNC0(dev->dev, "Failed to read vlan table\n");
		goto exit;
	}

	FUNC2(dev, REG_SW_VLAN_ENTRY__4, &vlan_table[0]);
	FUNC2(dev, REG_SW_VLAN_ENTRY_UNTAG__4, &vlan_table[1]);
	FUNC2(dev, REG_SW_VLAN_ENTRY_PORTS__4, &vlan_table[2]);

	FUNC4(dev, REG_SW_VLAN_CTRL, 0);

exit:
	FUNC6(&dev->vlan_mutex);

	return ret;
}