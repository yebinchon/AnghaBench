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
typedef  int /*<<< orphan*/  u32 ;
struct ena_com_dev {int dummy; } ;
struct ena_adapter {int /*<<< orphan*/  num_queues; TYPE_1__* pdev; struct ena_com_dev* ena_dev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENA_ADMIN_CRC32 ; 
 int /*<<< orphan*/  ENA_HASH_KEY_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENA_RX_RSS_TABLE_LOG_SIZE ; 
 int ENA_RX_RSS_TABLE_SIZE ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int FUNC2 (struct ena_com_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct ena_com_dev*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ena_com_dev*) ; 
 int FUNC5 (struct ena_com_dev*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct ena_com_dev*) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int) ; 

__attribute__((used)) static int FUNC9(struct ena_adapter *adapter)
{
	struct ena_com_dev *ena_dev = adapter->ena_dev;
	struct device *dev = &adapter->pdev->dev;
	int rc, i;
	u32 val;

	rc = FUNC5(ena_dev, ENA_RX_RSS_TABLE_LOG_SIZE);
	if (FUNC8(rc)) {
		FUNC1(dev, "Cannot init indirect table\n");
		goto err_rss_init;
	}

	for (i = 0; i < ENA_RX_RSS_TABLE_SIZE; i++) {
		val = FUNC7(i, adapter->num_queues);
		rc = FUNC3(ena_dev, i,
						       FUNC0(val));
		if (FUNC8(rc && (rc != -EOPNOTSUPP))) {
			FUNC1(dev, "Cannot fill indirect table\n");
			goto err_fill_indir;
		}
	}

	rc = FUNC2(ena_dev, ENA_ADMIN_CRC32, NULL,
					ENA_HASH_KEY_SIZE, 0xFFFFFFFF);
	if (FUNC8(rc && (rc != -EOPNOTSUPP))) {
		FUNC1(dev, "Cannot fill hash function\n");
		goto err_fill_indir;
	}

	rc = FUNC6(ena_dev);
	if (FUNC8(rc && (rc != -EOPNOTSUPP))) {
		FUNC1(dev, "Cannot fill hash control\n");
		goto err_fill_indir;
	}

	return 0;

err_fill_indir:
	FUNC4(ena_dev);
err_rss_init:

	return rc;
}