#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned long long u64 ;
struct TYPE_4__ {int data; scalar_t__ mask; } ;
struct rc_dev {unsigned long long allowed_wakeup_protocols; int wakeup_protocol; size_t (* s_wakeup_filter ) (struct rc_dev*,TYPE_1__*) ;int /*<<< orphan*/  lock; TYPE_1__ scancode_wakeup_filter; int /*<<< orphan*/  dev; scalar_t__ encode_wakeup; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;
typedef  enum rc_proto { ____Placeholder_rc_proto } rc_proto ;
struct TYPE_5__ {char* name; } ;

/* Variables and functions */
 int FUNC0 (TYPE_2__*) ; 
 size_t EINVAL ; 
 int RC_PROTO_RC6_MCE ; 
 int RC_PROTO_UNKNOWN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long long*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_2__* protocols ; 
 size_t FUNC5 (struct rc_dev*,TYPE_1__*) ; 
 scalar_t__ FUNC6 (char const*,char*) ; 
 struct rc_dev* FUNC7 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC8(struct device *device,
				      struct device_attribute *mattr,
				      const char *buf, size_t len)
{
	struct rc_dev *dev = FUNC7(device);
	enum rc_proto protocol = RC_PROTO_UNKNOWN;
	ssize_t rc;
	u64 allowed;
	int i;

	FUNC3(&dev->lock);

	allowed = dev->allowed_wakeup_protocols;

	if (!FUNC6(buf, "none")) {
		for (i = 0; i < FUNC0(protocols); i++) {
			if ((allowed & (1ULL << i)) &&
			    FUNC6(buf, protocols[i].name)) {
				protocol = i;
				break;
			}
		}

		if (i == FUNC0(protocols)) {
			rc = -EINVAL;
			goto out;
		}

		if (dev->encode_wakeup) {
			u64 mask = 1ULL << protocol;

			FUNC2(&mask);
			if (!mask) {
				rc = -EINVAL;
				goto out;
			}
		}
	}

	if (dev->wakeup_protocol != protocol) {
		dev->wakeup_protocol = protocol;
		FUNC1(&dev->dev, "Wakeup protocol changed to %d\n", protocol);

		if (protocol == RC_PROTO_RC6_MCE)
			dev->scancode_wakeup_filter.data = 0x800f0000;
		else
			dev->scancode_wakeup_filter.data = 0;
		dev->scancode_wakeup_filter.mask = 0;

		rc = dev->s_wakeup_filter(dev, &dev->scancode_wakeup_filter);
		if (rc == 0)
			rc = len;
	} else {
		rc = len;
	}

out:
	FUNC4(&dev->lock);
	return rc;
}