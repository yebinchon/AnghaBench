#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct redrat3_header {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  transfer_type; int /*<<< orphan*/  length; } ;
struct TYPE_4__ {TYPE_1__ header; } ;
struct redrat3_dev {scalar_t__ bytes_read; TYPE_2__ irdata; struct device* dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ENODATA ; 
 unsigned int RR3_MOD_SIGNAL_IN ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct redrat3_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct redrat3_dev*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct redrat3_dev*,unsigned int) ; 

__attribute__((used)) static int FUNC6(struct redrat3_dev *rr3, unsigned len)
{
	struct device *dev = rr3->dev;
	unsigned pkttype;
	int ret = 0;

	if (rr3->bytes_read == 0 && len >= sizeof(struct redrat3_header)) {
		FUNC5(rr3, len);
	} else if (rr3->bytes_read != 0) {
		FUNC4(rr3, len);
	} else if (rr3->bytes_read == 0) {
		FUNC2(dev, "error: no packet data read\n");
		ret = -ENODATA;
		goto out;
	}

	if (rr3->bytes_read < FUNC0(rr3->irdata.header.length) +
						sizeof(struct redrat3_header))
		/* we're still accumulating data */
		return 0;

	/* if we get here, we've got IR data to decode */
	pkttype = FUNC0(rr3->irdata.header.transfer_type);
	if (pkttype == RR3_MOD_SIGNAL_IN)
		FUNC3(rr3);
	else
		FUNC1(dev, "discarding non-signal data packet (type 0x%02x)\n",
								pkttype);

out:
	rr3->bytes_read = 0;
	return ret;
}