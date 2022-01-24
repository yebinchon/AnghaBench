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
struct usbnet {int dummy; } ;
struct rndis_wlan_private {int /*<<< orphan*/  command_lock; scalar_t__ current_command_oid; scalar_t__ command_buffer; } ;
struct rndis_reset {void* msg_len; void* msg_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONTROL_BUFFER_SIZE ; 
 int RNDIS_MSG_RESET ; 
 void* FUNC0 (int) ; 
 struct rndis_wlan_private* FUNC1 (struct usbnet*) ; 
 int /*<<< orphan*/  FUNC2 (struct rndis_reset*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct usbnet*,void*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct usbnet *usbdev)
{
	struct rndis_wlan_private *priv = FUNC1(usbdev);
	struct rndis_reset *reset;
	int ret;

	FUNC3(&priv->command_lock);

	reset = (void *)priv->command_buffer;
	FUNC2(reset, 0, sizeof(*reset));
	reset->msg_type = FUNC0(RNDIS_MSG_RESET);
	reset->msg_len = FUNC0(sizeof(*reset));
	priv->current_command_oid = 0;
	ret = FUNC5(usbdev, (void *)reset, CONTROL_BUFFER_SIZE);

	FUNC4(&priv->command_lock);

	if (ret < 0)
		return ret;
	return 0;
}