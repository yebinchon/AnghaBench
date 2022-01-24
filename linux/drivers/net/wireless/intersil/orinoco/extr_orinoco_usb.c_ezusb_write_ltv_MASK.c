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
typedef  int /*<<< orphan*/  u16 ;
struct request_context {int dummy; } ;
struct hermes {struct ezusb_priv* priv; } ;
struct ezusb_priv {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  EZUSB_FRAME_CONTROL ; 
 int /*<<< orphan*/  EZUSB_FRAME_DATA ; 
 int /*<<< orphan*/  EZUSB_RID_ACK ; 
 int /*<<< orphan*/  EZUSB_RID_TX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ezusb_priv*,struct request_context*,int /*<<< orphan*/ ,void const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct request_context* FUNC2 (struct ezusb_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct hermes *hw, int bap, u16 rid,
			   u16 length, const void *data)
{
	struct ezusb_priv *upriv = hw->priv;
	u16 frame_type;
	struct request_context *ctx;

	if (length == 0)
		return -EINVAL;

	length = FUNC0(length);

	/* On memory mapped devices HERMES_RID_CNFGROUPADDRESSES can be
	 * set to be empty, but the USB bridge doesn't like it */
	if (length == 0)
		return 0;

	ctx = FUNC2(upriv, rid, EZUSB_RID_ACK);
	if (!ctx)
		return -ENOMEM;

	if (rid == EZUSB_RID_TX)
		frame_type = EZUSB_FRAME_DATA;
	else
		frame_type = EZUSB_FRAME_CONTROL;

	return FUNC1(upriv, ctx, length, data, frame_type,
				NULL, 0, NULL);
}