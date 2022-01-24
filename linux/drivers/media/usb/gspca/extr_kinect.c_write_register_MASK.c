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
typedef  int /*<<< orphan*/  uint16_t ;
struct gspca_dev {int dummy; } ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 int /*<<< orphan*/  D_USBO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct gspca_dev*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct gspca_dev*,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC4(struct gspca_dev *gspca_dev, uint16_t reg,
			uint16_t data)
{
	uint16_t reply[2];
	__le16 cmd[2];
	int res;

	cmd[0] = FUNC0(reg);
	cmd[1] = FUNC0(data);

	FUNC1(gspca_dev, D_USBO, "Write Reg 0x%04x <= 0x%02x\n", reg, data);
	res = FUNC3(gspca_dev, 0x03, cmd, 4, reply, 4);
	if (res < 0)
		return res;
	if (res != 2) {
		FUNC2("send_cmd returned %d [%04x %04x], 0000 expected\n",
			res, reply[0], reply[1]);
	}
	return 0;
}