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
struct usbnet {int /*<<< orphan*/  net; int /*<<< orphan*/  data; } ;
struct qmi_wwan_state {int flags; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int EBUSY ; 
 size_t EINVAL ; 
 int /*<<< orphan*/  NETDEV_POST_TYPE_CHANGE ; 
 int /*<<< orphan*/  NETDEV_PRE_TYPE_CHANGE ; 
 int QMI_WWAN_FLAG_RAWIP ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 struct usbnet* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 size_t FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 scalar_t__ FUNC9 (char const*,int*) ; 
 int /*<<< orphan*/  FUNC10 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC11(struct device *d,  struct device_attribute *attr, const char *buf, size_t len)
{
	struct usbnet *dev = FUNC2(FUNC10(d));
	struct qmi_wwan_state *info = (void *)&dev->data;
	bool enable;
	int ret;

	if (FUNC9(buf, &enable))
		return -EINVAL;

	/* no change? */
	if (enable == (info->flags & QMI_WWAN_FLAG_RAWIP))
		return len;

	if (!FUNC7())
		return FUNC6();

	/* we don't want to modify a running netdev */
	if (FUNC3(dev->net)) {
		FUNC1(dev->net, "Cannot change a running device\n");
		ret = -EBUSY;
		goto err;
	}

	/* let other drivers deny the change */
	ret = FUNC0(NETDEV_PRE_TYPE_CHANGE, dev->net);
	ret = FUNC4(ret);
	if (ret) {
		FUNC1(dev->net, "Type change was refused\n");
		goto err;
	}

	if (enable)
		info->flags |= QMI_WWAN_FLAG_RAWIP;
	else
		info->flags &= ~QMI_WWAN_FLAG_RAWIP;
	FUNC5(dev->net);
	FUNC0(NETDEV_POST_TYPE_CHANGE, dev->net);
	ret = len;
err:
	FUNC8();
	return ret;
}