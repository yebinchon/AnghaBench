#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_3__ {int base; } ;
struct brcmf_core_priv {TYPE_1__ pub; struct brcmf_chip_priv* chip; } ;
struct brcmf_chip_priv {int /*<<< orphan*/  ctx; TYPE_2__* ops; } ;
struct TYPE_4__ {int (* read32 ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* write32 ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int SSB_IDLOW_INITIATOR ; 
 int SSB_IMSTATE_BUSY ; 
 int SSB_IMSTATE_REJECT ; 
 int SSB_TMSHIGH_BUSY ; 
 int SSB_TMSLOW_CLOCK ; 
 int SSB_TMSLOW_FGC ; 
 int SSB_TMSLOW_REJECT ; 
 int SSB_TMSLOW_RESET ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  sbidlow ; 
 int /*<<< orphan*/  sbimstate ; 
 int /*<<< orphan*/  sbtmstatehigh ; 
 int /*<<< orphan*/  sbtmstatelow ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int) ; 

__attribute__((used)) static void FUNC22(struct brcmf_core_priv *core,
				      u32 prereset, u32 reset)
{
	struct brcmf_chip_priv *ci;
	u32 val, base;

	ci = core->chip;
	base = core->pub.base;
	val = ci->ops->read32(ci->ctx, FUNC0(base, sbtmstatelow));
	if (val & SSB_TMSLOW_RESET)
		return;

	val = ci->ops->read32(ci->ctx, FUNC0(base, sbtmstatelow));
	if ((val & SSB_TMSLOW_CLOCK) != 0) {
		/*
		 * set target reject and spin until busy is clear
		 * (preserve core-specific bits)
		 */
		val = ci->ops->read32(ci->ctx, FUNC0(base, sbtmstatelow));
		ci->ops->write32(ci->ctx, FUNC0(base, sbtmstatelow),
					 val | SSB_TMSLOW_REJECT);

		val = ci->ops->read32(ci->ctx, FUNC0(base, sbtmstatelow));
		FUNC21(1);
		FUNC1((ci->ops->read32(ci->ctx, FUNC0(base, sbtmstatehigh))
			  & SSB_TMSHIGH_BUSY), 100000);

		val = ci->ops->read32(ci->ctx, FUNC0(base, sbtmstatehigh));
		if (val & SSB_TMSHIGH_BUSY)
			FUNC2("core state still busy\n");

		val = ci->ops->read32(ci->ctx, FUNC0(base, sbidlow));
		if (val & SSB_IDLOW_INITIATOR) {
			val = ci->ops->read32(ci->ctx,
					      FUNC0(base, sbimstate));
			val |= SSB_IMSTATE_REJECT;
			ci->ops->write32(ci->ctx,
					 FUNC0(base, sbimstate), val);
			val = ci->ops->read32(ci->ctx,
					      FUNC0(base, sbimstate));
			FUNC21(1);
			FUNC1((ci->ops->read32(ci->ctx,
						  FUNC0(base, sbimstate)) &
				  SSB_IMSTATE_BUSY), 100000);
		}

		/* set reset and reject while enabling the clocks */
		val = SSB_TMSLOW_FGC | SSB_TMSLOW_CLOCK |
		      SSB_TMSLOW_REJECT | SSB_TMSLOW_RESET;
		ci->ops->write32(ci->ctx, FUNC0(base, sbtmstatelow), val);
		val = ci->ops->read32(ci->ctx, FUNC0(base, sbtmstatelow));
		FUNC21(10);

		/* clear the initiator reject bit */
		val = ci->ops->read32(ci->ctx, FUNC0(base, sbidlow));
		if (val & SSB_IDLOW_INITIATOR) {
			val = ci->ops->read32(ci->ctx,
					      FUNC0(base, sbimstate));
			val &= ~SSB_IMSTATE_REJECT;
			ci->ops->write32(ci->ctx,
					 FUNC0(base, sbimstate), val);
		}
	}

	/* leave reset and reject asserted */
	ci->ops->write32(ci->ctx, FUNC0(base, sbtmstatelow),
			 (SSB_TMSLOW_REJECT | SSB_TMSLOW_RESET));
	FUNC21(1);
}