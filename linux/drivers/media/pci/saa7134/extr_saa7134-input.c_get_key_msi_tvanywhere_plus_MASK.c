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
typedef  scalar_t__ u8 ;
typedef  unsigned char u32 ;
struct saa7134_dev {int dummy; } ;
struct IR_i2c {TYPE_2__* c; } ;
typedef  enum rc_proto { ____Placeholder_rc_proto } rc_proto ;
struct TYPE_4__ {TYPE_1__* adapter; } ;
struct TYPE_3__ {struct saa7134_dev* algo_data; } ;

/* Variables and functions */
 int EIO ; 
 int RC_PROTO_UNKNOWN ; 
 int /*<<< orphan*/  SAA7134_GPIO_GPMODE3 ; 
 int /*<<< orphan*/  SAA7134_GPIO_GPRESCAN ; 
 int SAA7134_GPIO_GPSTATUS0 ; 
 int FUNC0 (TYPE_2__*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned char) ; 
 int /*<<< orphan*/  FUNC2 (struct IR_i2c*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct IR_i2c *ir,
				       enum rc_proto *protocol,
				       u32 *scancode, u8 *toggle)
{
	unsigned char b;
	int gpio, rc;

	/* <dev> is needed to access GPIO. Used by the saa_readl macro. */
	struct saa7134_dev *dev = ir->c->adapter->algo_data;
	if (dev == NULL) {
		FUNC2(ir, "get_key_msi_tvanywhere_plus: ir->c->adapter->algo_data is NULL!\n");
		return -EIO;
	}

	/* rising SAA7134_GPIO_GPRESCAN reads the status */

	FUNC3(SAA7134_GPIO_GPMODE3, SAA7134_GPIO_GPRESCAN);
	FUNC5(SAA7134_GPIO_GPMODE3, SAA7134_GPIO_GPRESCAN);

	gpio = FUNC4(SAA7134_GPIO_GPSTATUS0 >> 2);

	/* GPIO&0x40 is pulsed low when a button is pressed. Don't do
	   I2C receive if gpio&0x40 is not low. */

	if (gpio & 0x40)
		return 0;       /* No button press */

	/* GPIO says there is a button press. Get it. */

	rc = FUNC0(ir->c, &b, 1);
	if (rc != 1) {
		FUNC2(ir, "read error\n");
		if (rc < 0)
			return rc;
		return -EIO;
	}

	/* No button press */

	if (b == 0xff)
		return 0;

	/* Button pressed */

	FUNC1("get_key_msi_tvanywhere_plus: Key = 0x%02X\n", b);
	*protocol = RC_PROTO_UNKNOWN;
	*scancode = b;
	*toggle = 0;
	return 1;
}