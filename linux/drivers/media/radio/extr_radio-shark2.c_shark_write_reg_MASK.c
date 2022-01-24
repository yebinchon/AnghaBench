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
typedef  int u64 ;
struct shark_device {int* transfer_buffer; int /*<<< orphan*/  usbdev; } ;
struct radio_tea5777 {int /*<<< orphan*/  v4l2_dev; struct shark_device* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  SHARK_OUT_EP ; 
 int /*<<< orphan*/  TB_LEN ; 
 int /*<<< orphan*/  debug ; 
 int /*<<< orphan*/  FUNC0 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC5(struct radio_tea5777 *tea, u64 reg)
{
	struct shark_device *shark = tea->private_data;
	int i, res, actual_len;

	FUNC0(shark->transfer_buffer, 0, TB_LEN);
	shark->transfer_buffer[0] = 0x81; /* Write register command */
	for (i = 0; i < 6; i++)
		shark->transfer_buffer[i + 1] = (reg >> (40 - i * 8)) & 0xff;

	FUNC3(1, debug, tea->v4l2_dev, "shark2-write: %*ph\n",
		 7, shark->transfer_buffer);

	res = FUNC1(shark->usbdev,
				FUNC2(shark->usbdev, SHARK_OUT_EP),
				shark->transfer_buffer, TB_LEN,
				&actual_len, 1000);
	if (res < 0) {
		FUNC4(tea->v4l2_dev, "write error: %d\n", res);
		return res;
	}

	return 0;
}