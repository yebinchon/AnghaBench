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
typedef  int u16 ;
struct pucan_status_msg {int dummy; } ;
struct pucan_rx_msg {int /*<<< orphan*/  size; int /*<<< orphan*/  type; } ;
struct pucan_error_msg {int dummy; } ;
struct peak_canfd_priv {int dummy; } ;

/* Variables and functions */
#define  PUCAN_MSG_CACHE_CRITICAL 131 
#define  PUCAN_MSG_CAN_RX 130 
#define  PUCAN_MSG_ERROR 129 
#define  PUCAN_MSG_STATUS 128 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct peak_canfd_priv*) ; 
 int FUNC2 (struct peak_canfd_priv*,struct pucan_rx_msg*) ; 
 int FUNC3 (struct peak_canfd_priv*,struct pucan_error_msg*) ; 
 int FUNC4 (struct peak_canfd_priv*,struct pucan_status_msg*) ; 

int FUNC5(struct peak_canfd_priv *priv,
			  struct pucan_rx_msg *msg)
{
	u16 msg_type = FUNC0(msg->type);
	int msg_size = FUNC0(msg->size);
	int err;

	if (!msg_size || !msg_type) {
		/* null packet found: end of list */
		goto exit;
	}

	switch (msg_type) {
	case PUCAN_MSG_CAN_RX:
		err = FUNC2(priv, (struct pucan_rx_msg *)msg);
		break;
	case PUCAN_MSG_ERROR:
		err = FUNC3(priv, (struct pucan_error_msg *)msg);
		break;
	case PUCAN_MSG_STATUS:
		err = FUNC4(priv, (struct pucan_status_msg *)msg);
		break;
	case PUCAN_MSG_CACHE_CRITICAL:
		err = FUNC1(priv);
		break;
	default:
		err = 0;
	}

	if (err < 0)
		return err;

exit:
	return msg_size;
}