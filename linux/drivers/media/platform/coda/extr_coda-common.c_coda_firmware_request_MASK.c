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
struct coda_dev {size_t firmware; int /*<<< orphan*/  dev; TYPE_1__* devtype; } ;
struct TYPE_2__ {char** firmware; int /*<<< orphan*/  product; } ;

/* Variables and functions */
 size_t FUNC0 (char**) ; 
 int EINVAL ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  coda_fw_callback ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct coda_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct coda_dev *dev)
{
	char *fw;

	if (dev->firmware >= FUNC0(dev->devtype->firmware))
		return -EINVAL;

	fw = dev->devtype->firmware[dev->firmware];

	FUNC2(dev->dev, "requesting firmware '%s' for %s\n", fw,
		FUNC1(dev->devtype->product));

	return FUNC3(THIS_MODULE, true, fw, dev->dev,
				       GFP_KERNEL, dev, coda_fw_callback);
}