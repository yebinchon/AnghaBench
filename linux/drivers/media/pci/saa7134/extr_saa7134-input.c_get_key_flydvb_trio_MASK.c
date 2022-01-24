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
typedef  scalar_t__ u8 ;
typedef  unsigned char u32 ;
struct saa7134_dev {int dummy; } ;
struct IR_i2c {TYPE_2__* c; } ;
typedef  enum rc_proto { ____Placeholder_rc_proto } rc_proto ;
struct TYPE_5__ {TYPE_1__* adapter; } ;
struct TYPE_4__ {struct saa7134_dev* algo_data; } ;

/* Variables and functions */
 int EIO ; 
 int RC_PROTO_UNKNOWN ; 
 int /*<<< orphan*/  SAA7134_GPIO_GPMODE3 ; 
 int /*<<< orphan*/  SAA7134_GPIO_GPRESCAN ; 
 int SAA7134_GPIO_GPSTATUS0 ; 
 int FUNC0 (TYPE_2__*,unsigned char*,int) ; 
 int FUNC1 (TYPE_2__*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct IR_i2c*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct IR_i2c *ir, enum rc_proto *protocol,
			       u32 *scancode, u8 *toggle)
{
	int gpio, rc;
	int attempt = 0;
	unsigned char b;

	/* We need this to access GPI Used by the saa_readl macro. */
	struct saa7134_dev *dev = ir->c->adapter->algo_data;

	if (dev == NULL) {
		FUNC2(ir, "get_key_flydvb_trio: ir->c->adapter->algo_data is NULL!\n");
		return -EIO;
	}

	/* rising SAA7134_GPIGPRESCAN reads the status */
	FUNC4(SAA7134_GPIO_GPMODE3, SAA7134_GPIO_GPRESCAN);
	FUNC6(SAA7134_GPIO_GPMODE3, SAA7134_GPIO_GPRESCAN);

	gpio = FUNC5(SAA7134_GPIO_GPSTATUS0 >> 2);

	if (0x40000 & ~gpio)
		return 0; /* No button press */

	/* poll IR chip */
	/* weak up the IR chip */
	b = 0;

	while (1 != FUNC1(ir->c, &b, 1)) {
		if ((attempt++) < 10) {
			/*
			 * wait a bit for next attempt -
			 * I don't know how make it better
			 */
			FUNC3(10);
			continue;
		}
		FUNC2(ir, "send wake up byte to pic16C505 (IR chip)failed %dx\n",
		       attempt);
		return -EIO;
	}
	rc = FUNC0(ir->c, &b, 1);
	if (rc != 1) {
		FUNC2(ir, "read error\n");
		if (rc < 0)
			return rc;
		return -EIO;
	}

	*protocol = RC_PROTO_UNKNOWN;
	*scancode = b;
	*toggle = 0;
	return 1;
}