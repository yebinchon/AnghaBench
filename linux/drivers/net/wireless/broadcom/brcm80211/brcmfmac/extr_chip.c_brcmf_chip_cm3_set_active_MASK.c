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
struct brcmf_core {int dummy; } ;
struct brcmf_chip_priv {int /*<<< orphan*/  pub; int /*<<< orphan*/  ctx; TYPE_1__* ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* activate ) (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  BCMA_CORE_ARM_CM3 ; 
 int /*<<< orphan*/  BCMA_CORE_INTERNAL_MEM ; 
 struct brcmf_core* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct brcmf_core*) ; 
 int /*<<< orphan*/  FUNC2 (struct brcmf_core*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC5(struct brcmf_chip_priv *chip)
{
	struct brcmf_core *core;

	core = FUNC0(&chip->pub, BCMA_CORE_INTERNAL_MEM);
	if (!FUNC1(core)) {
		FUNC3("SOCRAM core is down after reset?\n");
		return false;
	}

	chip->ops->activate(chip->ctx, &chip->pub, 0);

	core = FUNC0(&chip->pub, BCMA_CORE_ARM_CM3);
	FUNC2(core, 0, 0, 0);

	return true;
}