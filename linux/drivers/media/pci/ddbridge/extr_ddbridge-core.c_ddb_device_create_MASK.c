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
struct ddb {size_t nr; int /*<<< orphan*/  ddb_dev; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ DDB_MAX_ADAPTER ; 
 int /*<<< orphan*/  ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,size_t) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ddb_class ; 
 int FUNC4 (struct ddb*) ; 
 int /*<<< orphan*/  FUNC5 (struct ddb*) ; 
 int /*<<< orphan*/  ddb_major ; 
 int /*<<< orphan*/  ddb_mutex ; 
 scalar_t__ ddb_num ; 
 struct ddb** ddbs ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ddb*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

int FUNC11(struct ddb *dev)
{
	int res = 0;

	if (ddb_num == DDB_MAX_ADAPTER)
		return -ENOMEM;
	FUNC9(&ddb_mutex);
	dev->nr = ddb_num;
	ddbs[dev->nr] = dev;
	dev->ddb_dev = FUNC7(&ddb_class, dev->dev,
				     FUNC2(ddb_major, dev->nr),
				     dev, "ddbridge%d", dev->nr);
	if (FUNC1(dev->ddb_dev)) {
		res = FUNC3(dev->ddb_dev);
		FUNC6(dev->dev, "Could not create ddbridge%d\n", dev->nr);
		goto fail;
	}
	res = FUNC4(dev);
	if (res) {
		FUNC5(dev);
		FUNC8(&ddb_class, FUNC2(ddb_major, dev->nr));
		ddbs[dev->nr] = NULL;
		dev->ddb_dev = FUNC0(-ENODEV);
	} else {
		ddb_num++;
	}
fail:
	FUNC10(&ddb_mutex);
	return res;
}