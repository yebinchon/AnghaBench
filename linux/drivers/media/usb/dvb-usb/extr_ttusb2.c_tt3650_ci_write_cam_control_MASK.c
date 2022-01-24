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
struct dvb_ca_en50221 {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  TT3650_CMD_CI_WR_CTRL ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct dvb_ca_en50221*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static int FUNC2(struct dvb_ca_en50221 *ca, int slot, u8 address, u8 value)
{
	u8 buf[2];

	FUNC0("%d 0x%02x 0x%02x", slot, address, value);

	if (slot)
		return -EINVAL;

	buf[0] = address;
	buf[1] = value;

	return FUNC1(ca, TT3650_CMD_CI_WR_CTRL, buf, 2, 2);
}