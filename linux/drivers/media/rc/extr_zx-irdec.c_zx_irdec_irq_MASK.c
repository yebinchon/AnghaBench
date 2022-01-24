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
typedef  int u8 ;
typedef  int u32 ;
struct zx_irdec {int /*<<< orphan*/  rcd; scalar_t__ base; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
typedef  enum rc_proto { ____Placeholder_rc_proto } rc_proto ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 scalar_t__ ZX_IR_CNUM ; 
 scalar_t__ ZX_IR_CODE ; 
 scalar_t__ ZX_IR_INTSTCLR ; 
 int ZX_NECRPT ; 
 int FUNC0 (int,int,int,int,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *dev_id)
{
	struct zx_irdec *irdec = dev_id;
	u8 address, not_address;
	u8 command, not_command;
	u32 rawcode, scancode;
	enum rc_proto rc_proto;

	/* Clear interrupt */
	FUNC4(1, irdec->base + ZX_IR_INTSTCLR);

	/* Check repeat frame */
	if (FUNC3(irdec->base + ZX_IR_CNUM) & ZX_NECRPT) {
		FUNC2(irdec->rcd);
		goto done;
	}

	rawcode = FUNC3(irdec->base + ZX_IR_CODE);
	not_command = (rawcode >> 24) & 0xff;
	command = (rawcode >> 16) & 0xff;
	not_address = (rawcode >> 8) & 0xff;
	address = rawcode & 0xff;

	scancode = FUNC0(address, not_address,
					    command, not_command,
					    &rc_proto);
	FUNC1(irdec->rcd, rc_proto, scancode, 0);

done:
	return IRQ_HANDLED;
}