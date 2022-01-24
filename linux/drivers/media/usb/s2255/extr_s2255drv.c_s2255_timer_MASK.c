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
struct timer_list {int dummy; } ;
struct s2255_fw {int /*<<< orphan*/  wait_fw; int /*<<< orphan*/  fw_state; int /*<<< orphan*/  fw_urb; } ;
struct s2255_dev {struct s2255_fw* fw_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  S2255_FW_FAILED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct s2255_dev* dev ; 
 struct s2255_dev* FUNC1 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  timer ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct timer_list *t)
{
	struct s2255_dev *dev = FUNC1(dev, t, timer);
	struct s2255_fw *data = dev->fw_data;
	if (FUNC3(data->fw_urb, GFP_ATOMIC) < 0) {
		FUNC2("s2255: can't submit urb\n");
		FUNC0(&data->fw_state, S2255_FW_FAILED);
		/* wake up anything waiting for the firmware */
		FUNC4(&data->wait_fw);
		return;
	}
}