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
typedef  int /*<<< orphan*/  u16 ;
struct net_device {int /*<<< orphan*/  dev; } ;
struct firmware {int /*<<< orphan*/  size; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int /*<<< orphan*/  BNX_DIR_ORDINAL_FIRST ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,char*,int,char const*) ; 
 int /*<<< orphan*/  FUNC6 (struct firmware const*) ; 
 int FUNC7 (struct firmware const**,char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct net_device *dev,
					 u16 dir_type,
					 const char *filename)
{
	const struct firmware  *fw;
	int			rc;

	rc = FUNC7(&fw, filename, &dev->dev);
	if (rc != 0) {
		FUNC5(dev, "Error %d requesting firmware file: %s\n",
			   rc, filename);
		return rc;
	}
	if (FUNC0(dir_type) == true)
		rc = FUNC2(dev, dir_type, fw->data, fw->size);
	else if (FUNC1(dir_type) == true)
		rc = FUNC3(dev, dir_type, fw->data, fw->size);
	else
		rc = FUNC4(dev, dir_type, BNX_DIR_ORDINAL_FIRST,
				      0, 0, fw->data, fw->size);
	FUNC6(fw);
	return rc;
}