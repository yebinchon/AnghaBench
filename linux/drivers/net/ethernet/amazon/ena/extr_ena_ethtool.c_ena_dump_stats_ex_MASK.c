#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  char u8 ;
typedef  char u64 ;
struct net_device {int dummy; } ;
struct ena_adapter {TYPE_1__* pdev; struct net_device* netdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ETH_GSTRING_LEN ; 
 int /*<<< orphan*/  ETH_SS_STATS ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 char* FUNC0 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  drv ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int /*<<< orphan*/ *,char*) ; 
 int FUNC3 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct ena_adapter*,int /*<<< orphan*/ ,struct net_device*,char*,...) ; 
 int FUNC6 (char*,int,char*,char*,char) ; 

__attribute__((used)) static void FUNC7(struct ena_adapter *adapter, u8 *buf)
{
	struct net_device *netdev = adapter->netdev;
	u8 *strings_buf;
	u64 *data_buf;
	int strings_num;
	int i, rc;

	strings_num = FUNC3(netdev, ETH_SS_STATS);
	if (strings_num <= 0) {
		FUNC5(adapter, drv, netdev, "Can't get stats num\n");
		return;
	}

	strings_buf = FUNC0(&adapter->pdev->dev,
				   ETH_GSTRING_LEN, strings_num,
				   GFP_ATOMIC);
	if (!strings_buf) {
		FUNC5(adapter, drv, netdev,
			  "failed to alloc strings_buf\n");
		return;
	}

	data_buf = FUNC0(&adapter->pdev->dev,
				strings_num, sizeof(u64),
				GFP_ATOMIC);
	if (!data_buf) {
		FUNC5(adapter, drv, netdev,
			  "failed to allocate data buf\n");
		FUNC1(&adapter->pdev->dev, strings_buf);
		return;
	}

	FUNC4(netdev, ETH_SS_STATS, strings_buf);
	FUNC2(netdev, NULL, data_buf);

	/* If there is a buffer, dump stats, otherwise print them to dmesg */
	if (buf)
		for (i = 0; i < strings_num; i++) {
			rc = FUNC6(buf, ETH_GSTRING_LEN + sizeof(u64),
				      "%s %llu\n",
				      strings_buf + i * ETH_GSTRING_LEN,
				      data_buf[i]);
			buf += rc;
		}
	else
		for (i = 0; i < strings_num; i++)
			FUNC5(adapter, drv, netdev, "%s: %llu\n",
				  strings_buf + i * ETH_GSTRING_LEN,
				  data_buf[i]);

	FUNC1(&adapter->pdev->dev, strings_buf);
	FUNC1(&adapter->pdev->dev, data_buf);
}