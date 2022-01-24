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
typedef  int u8 ;
typedef  int u64 ;
struct rc_dev {struct em28xx_IR* priv; } ;
struct em28xx_IR {int full_code; int rc_proto; struct em28xx* dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  xclk; } ;
struct em28xx {TYPE_1__ board; } ;

/* Variables and functions */
 int EINVAL ; 
 int EM2874_IR_NEC ; 
 int EM2874_IR_NEC_NO_PARITY ; 
 int EM2874_IR_RC5 ; 
 int EM2874_IR_RC6_MODE_0 ; 
 int /*<<< orphan*/  EM2874_R50_IR_CONFIG ; 
 int /*<<< orphan*/  EM28XX_R0F_XCLK ; 
 int /*<<< orphan*/  EM28XX_XCLK_IR_RC5_MODE ; 
 int RC_PROTO_BIT_NEC ; 
 int RC_PROTO_BIT_RC5 ; 
 int RC_PROTO_BIT_RC6_0 ; 
 int RC_PROTO_BIT_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (struct em28xx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct em28xx*,int /*<<< orphan*/ ,int*,int) ; 

__attribute__((used)) static int FUNC2(struct rc_dev *rc_dev, u64 *rc_proto)
{
	struct em28xx_IR *ir = rc_dev->priv;
	struct em28xx *dev = ir->dev;
	u8 ir_config = EM2874_IR_RC5;

	/* Adjust xclk and set type based on IR table for RC5/NEC/RC6 tables */
	if (*rc_proto & RC_PROTO_BIT_RC5) {
		dev->board.xclk |= EM28XX_XCLK_IR_RC5_MODE;
		ir->full_code = 1;
		*rc_proto = RC_PROTO_BIT_RC5;
	} else if (*rc_proto & RC_PROTO_BIT_NEC) {
		dev->board.xclk &= ~EM28XX_XCLK_IR_RC5_MODE;
		ir_config = EM2874_IR_NEC | EM2874_IR_NEC_NO_PARITY;
		ir->full_code = 1;
		*rc_proto = RC_PROTO_BIT_NEC;
	} else if (*rc_proto & RC_PROTO_BIT_RC6_0) {
		dev->board.xclk |= EM28XX_XCLK_IR_RC5_MODE;
		ir_config = EM2874_IR_RC6_MODE_0;
		ir->full_code = 1;
		*rc_proto = RC_PROTO_BIT_RC6_0;
	} else if (*rc_proto & RC_PROTO_BIT_UNKNOWN) {
		*rc_proto = RC_PROTO_BIT_UNKNOWN;
	} else {
		*rc_proto = ir->rc_proto;
		return -EINVAL;
	}
	FUNC1(dev, EM2874_R50_IR_CONFIG, &ir_config, 1);
	FUNC0(dev, EM28XX_R0F_XCLK, dev->board.xclk,
			      EM28XX_XCLK_IR_RC5_MODE);

	ir->rc_proto = *rc_proto;

	return 0;
}