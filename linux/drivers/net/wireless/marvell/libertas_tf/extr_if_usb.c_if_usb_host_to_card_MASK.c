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
typedef  scalar_t__ uint8_t ;
typedef  scalar_t__ uint16_t ;
typedef  int u8 ;
struct lbtf_private {struct if_usb_card* card; } ;
struct if_usb_card {scalar_t__ ep_out_buf; TYPE_1__* udev; } ;
typedef  int /*<<< orphan*/  __le32 ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_TYPE_DATA ; 
 int /*<<< orphan*/  CMD_TYPE_REQUEST ; 
 scalar_t__ MESSAGE_HEADER_LEN ; 
 scalar_t__ MVMS_CMD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__*,scalar_t__) ; 
 int FUNC3 (struct if_usb_card*,scalar_t__,scalar_t__,int) ; 

__attribute__((used)) static int FUNC4(struct lbtf_private *priv, uint8_t type,
			       uint8_t *payload, uint16_t nb)
{
	struct if_usb_card *cardp = priv->card;
	u8 data = 0;

	FUNC1(&cardp->udev->dev, "*** type = %u\n", type);
	FUNC1(&cardp->udev->dev, "size after = %d\n", nb);

	if (type == MVMS_CMD) {
		*(__le32 *)cardp->ep_out_buf = FUNC0(CMD_TYPE_REQUEST);
	} else {
		*(__le32 *)cardp->ep_out_buf = FUNC0(CMD_TYPE_DATA);
		data = 1;
	}

	FUNC2((cardp->ep_out_buf + MESSAGE_HEADER_LEN), payload, nb);

	return FUNC3(cardp, cardp->ep_out_buf, nb + MESSAGE_HEADER_LEN,
			    data);
}