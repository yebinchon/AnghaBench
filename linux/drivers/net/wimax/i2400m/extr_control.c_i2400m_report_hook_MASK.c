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
struct i2400m_l3l4_hdr {int /*<<< orphan*/  status; int /*<<< orphan*/  type; } ;
struct i2400m {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  I2400M_MS_DONE_OK ; 
#define  I2400M_MT_REPORT_POWERSAVE_READY 129 
#define  I2400M_MT_REPORT_STATE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,struct device*,char*,struct i2400m*,struct i2400m_l3l4_hdr const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int,struct device*,char*,struct i2400m*,struct i2400m_l3l4_hdr const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int,struct device*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct i2400m*) ; 
 struct device* FUNC5 (struct i2400m*) ; 
 int /*<<< orphan*/  i2400m_power_save_disabled ; 
 int /*<<< orphan*/  FUNC6 (struct i2400m*,struct i2400m_l3l4_hdr const*,size_t,char*) ; 
 unsigned int FUNC7 (int /*<<< orphan*/ ) ; 

void FUNC8(struct i2400m *i2400m,
			const struct i2400m_l3l4_hdr *l3l4_hdr, size_t size)
{
	struct device *dev = FUNC5(i2400m);
	unsigned msg_type;

	FUNC2(3, dev, "(i2400m %p l3l4_hdr %p size %zu)\n",
		  i2400m, l3l4_hdr, size);
	/* Chew on the message, we might need some information from
	 * here */
	msg_type = FUNC7(l3l4_hdr->type);
	switch (msg_type) {
	case I2400M_MT_REPORT_STATE:	/* carrier detection... */
		FUNC6(i2400m,
					 l3l4_hdr, size, "REPORT STATE");
		break;
	/* If the device is ready for power save, then ask it to do
	 * it. */
	case I2400M_MT_REPORT_POWERSAVE_READY:	/* zzzzz */
		if (l3l4_hdr->status == FUNC0(I2400M_MS_DONE_OK)) {
			if (i2400m_power_save_disabled)
				FUNC3(1, dev, "ready for powersave, "
					 "not requesting (disabled by module "
					 "parameter)\n");
			else {
				FUNC3(1, dev, "ready for powersave, "
					 "requesting\n");
				FUNC4(i2400m);
			}
		}
		break;
	}
	FUNC1(3, dev, "(i2400m %p l3l4_hdr %p size %zu) = void\n",
		i2400m, l3l4_hdr, size);
}