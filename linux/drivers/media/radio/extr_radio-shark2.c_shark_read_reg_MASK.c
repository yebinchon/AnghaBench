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
typedef  int u32 ;
struct shark_device {int* transfer_buffer; int /*<<< orphan*/  usbdev; } ;
struct radio_tea5777 {int /*<<< orphan*/  v4l2_dev; struct shark_device* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  SHARK_IN_EP ; 
 int /*<<< orphan*/  SHARK_OUT_EP ; 
 int /*<<< orphan*/  TB_LEN ; 
 int /*<<< orphan*/  debug ; 
 int /*<<< orphan*/  FUNC0 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC6(struct radio_tea5777 *tea, u32 *reg_ret)
{
	struct shark_device *shark = tea->private_data;
	int i, res, actual_len;
	u32 reg = 0;

	FUNC0(shark->transfer_buffer, 0, TB_LEN);
	shark->transfer_buffer[0] = 0x82;
	res = FUNC1(shark->usbdev,
				FUNC3(shark->usbdev, SHARK_OUT_EP),
				shark->transfer_buffer, TB_LEN,
				&actual_len, 1000);
	if (res < 0) {
		FUNC5(tea->v4l2_dev, "request-read error: %d\n", res);
		return res;
	}

	res = FUNC1(shark->usbdev,
				FUNC2(shark->usbdev, SHARK_IN_EP),
				shark->transfer_buffer, TB_LEN,
				&actual_len, 1000);
	if (res < 0) {
		FUNC5(tea->v4l2_dev, "read error: %d\n", res);
		return res;
	}

	for (i = 0; i < 3; i++)
		reg |= shark->transfer_buffer[i] << (16 - i * 8);

	FUNC4(1, debug, tea->v4l2_dev, "shark2-read: %*ph\n",
		 3, shark->transfer_buffer);

	*reg_ret = reg;
	return 0;
}