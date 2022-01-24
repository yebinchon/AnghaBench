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
struct saa7146_dev {scalar_t__ ext_priv; } ;
struct hexium {int /*<<< orphan*/  i2c_adapter; int /*<<< orphan*/  video_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct saa7146_dev*) ; 
 int /*<<< orphan*/  hexium_num ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct hexium*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct saa7146_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct saa7146_dev*) ; 

__attribute__((used)) static int FUNC5(struct saa7146_dev *dev)
{
	struct hexium *hexium = (struct hexium *) dev->ext_priv;

	FUNC0("dev:%p\n", dev);

	FUNC3(&hexium->video_dev, dev);
	FUNC4(dev);

	hexium_num--;

	FUNC1(&hexium->i2c_adapter);
	FUNC2(hexium);
	return 0;
}