#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct sk_buff {int dummy; } ;
struct lbtf_private {int /*<<< orphan*/  driver_lock; int /*<<< orphan*/  cmd_resp_buff; } ;
struct if_usb_card {TYPE_1__* udev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int LBS_CMD_BUFFER_SIZE ; 
 int MESSAGE_HEADER_LEN ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct lbtf_private*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static inline void FUNC6(int recvlength, uint8_t *recvbuff,
				      struct sk_buff *skb,
				      struct if_usb_card *cardp,
				      struct lbtf_private *priv)
{
	unsigned long flags;

	if (recvlength < MESSAGE_HEADER_LEN ||
	    recvlength > LBS_CMD_BUFFER_SIZE) {
		FUNC2(&cardp->udev->dev,
			     "The receive buffer is invalid: %d\n", recvlength);
		FUNC0(skb);
		return;
	}

	FUNC4(&priv->driver_lock, flags);
	FUNC3(priv->cmd_resp_buff, recvbuff + MESSAGE_HEADER_LEN,
	       recvlength - MESSAGE_HEADER_LEN);
	FUNC0(skb);
	FUNC1(priv);
	FUNC5(&priv->driver_lock, flags);
}