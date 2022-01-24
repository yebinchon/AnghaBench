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
struct usbnet {int /*<<< orphan*/  net; int /*<<< orphan*/  data; } ;
struct qmi_wwan_state {int /*<<< orphan*/  flags; } ;
struct net_device {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int /*<<< orphan*/  QMI_WWAN_FLAG_MUX ; 
 scalar_t__ FUNC0 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 struct usbnet* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 struct net_device* FUNC4 (struct usbnet*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct usbnet*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*,int /*<<< orphan*/ *) ; 
 int FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC11(struct device *d,  struct device_attribute *attr, const char *buf, size_t len)
{
	struct usbnet *dev = FUNC2(FUNC10(d));
	struct qmi_wwan_state *info = (void *)&dev->data;
	struct net_device *del_dev;
	u8 mux_id;
	int ret = 0;

	if (FUNC0(buf, 0, &mux_id))
		return -EINVAL;

	if (!FUNC8())
		return FUNC7();

	/* we don't want to modify a running netdev */
	if (FUNC3(dev->net)) {
		FUNC1(dev->net, "Cannot change a running device\n");
		ret = -EBUSY;
		goto err;
	}

	del_dev = FUNC4(dev, mux_id);
	if (!del_dev) {
		FUNC1(dev->net, "mux_id not present\n");
		ret = -EINVAL;
		goto err;
	}
	FUNC6(del_dev, NULL);

	if (!FUNC5(dev))
		info->flags &= ~QMI_WWAN_FLAG_MUX;
	ret = len;
err:
	FUNC9();
	return ret;
}