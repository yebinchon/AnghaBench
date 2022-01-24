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
typedef  int /*<<< orphan*/  u8 ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct niu_parent {int num_ports; int /*<<< orphan*/ * txchan_per_port; int /*<<< orphan*/ * rxchan_per_port; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 struct niu_parent* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,...) ; 
 struct platform_device* FUNC2 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev,
				    struct device_attribute *attr, char *buf,
				    int rx)
{
	struct platform_device *plat_dev = FUNC2(dev);
	struct niu_parent *p = FUNC0(&plat_dev->dev);
	char *orig_buf = buf;
	u8 *arr;
	int i;

	arr = (rx ? p->rxchan_per_port : p->txchan_per_port);

	for (i = 0; i < p->num_ports; i++) {
		buf += FUNC1(buf,
			       (i == 0) ? "%d" : " %d",
			       arr[i]);
	}
	buf += FUNC1(buf, "\n");

	return buf - orig_buf;
}