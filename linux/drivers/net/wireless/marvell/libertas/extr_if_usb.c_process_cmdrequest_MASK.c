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
typedef  size_t u8 ;
struct sk_buff {int dummy; } ;
struct lbs_private {scalar_t__ resp_idx; int* resp_len; int /*<<< orphan*/  driver_lock; int /*<<< orphan*/ * resp_buf; } ;
struct if_usb_card {TYPE_1__* udev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int LBS_CMD_BUFFER_SIZE ; 
 int MESSAGE_HEADER_LEN ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct lbs_private*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static inline void FUNC7(int recvlength, uint8_t *recvbuff,
				      struct sk_buff *skb,
				      struct if_usb_card *cardp,
				      struct lbs_private *priv)
{
	unsigned long flags;
	u8 i;

	if (recvlength > LBS_CMD_BUFFER_SIZE) {
		FUNC2(&cardp->udev->dev,
			     "The receive buffer is too large\n");
		FUNC1(skb);
		return;
	}

	FUNC5(&priv->driver_lock, flags);

	i = (priv->resp_idx == 0) ? 1 : 0;
	FUNC0(priv->resp_len[i]);
	priv->resp_len[i] = (recvlength - MESSAGE_HEADER_LEN);
	FUNC4(priv->resp_buf[i], recvbuff + MESSAGE_HEADER_LEN,
		priv->resp_len[i]);
	FUNC1(skb);
	FUNC3(priv, i);

	FUNC6(&priv->driver_lock, flags);

	FUNC2(&cardp->udev->dev,
		    "Wake up main thread to handle cmd response\n");
}