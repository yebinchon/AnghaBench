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
struct dvb_ca_en50221 {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int /*<<< orphan*/  TT3650_CMD_CI_SET_VIDEO_PORT ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int FUNC2 (struct dvb_ca_en50221*,int /*<<< orphan*/ ,int*,int,int) ; 

__attribute__((used)) static int FUNC3(struct dvb_ca_en50221 *ca, int slot, int enable)
{
	u8 buf[1];
	int ret;

	FUNC0("%d %d", slot, enable);

	if (slot)
		return -EINVAL;

	buf[0] = enable;

	ret = FUNC2(ca, TT3650_CMD_CI_SET_VIDEO_PORT, buf, 1, 1);
	if (ret < 0)
		return ret;

	if (enable != buf[0]) {
		FUNC1("CI not %sabled.", enable ? "en" : "dis");
		return -EIO;
	}

	return 0;
}