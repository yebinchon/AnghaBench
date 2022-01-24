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
typedef  int u8 ;
struct usbnet {int /*<<< orphan*/  net; int /*<<< orphan*/  data; } ;
struct qmi_wwan_state {int /*<<< orphan*/  flags; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int /*<<< orphan*/  QMI_WWAN_FLAG_MUX ; 
 scalar_t__ FUNC0 (char const*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 struct usbnet* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct usbnet*,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int) ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC10(struct device *d,  struct device_attribute *attr, const char *buf, size_t len)
{
	struct usbnet *dev = FUNC2(FUNC9(d));
	struct qmi_wwan_state *info = (void *)&dev->data;
	u8 mux_id;
	int ret;

	if (FUNC0(buf, 0, &mux_id))
		return -EINVAL;

	/* mux_id [1 - 254] for compatibility with ip(8) and the rmnet driver */
	if (mux_id < 1 || mux_id > 254)
		return -EINVAL;

	if (!FUNC7())
		return FUNC6();

	if (FUNC4(dev, mux_id)) {
		FUNC1(dev->net, "mux_id already present\n");
		ret = -EINVAL;
		goto err;
	}

	/* we don't want to modify a running netdev */
	if (FUNC3(dev->net)) {
		FUNC1(dev->net, "Cannot change a running device\n");
		ret = -EBUSY;
		goto err;
	}

	ret = FUNC5(dev->net, mux_id);
	if (!ret) {
		info->flags |= QMI_WWAN_FLAG_MUX;
		ret = len;
	}
err:
	FUNC8();
	return ret;
}