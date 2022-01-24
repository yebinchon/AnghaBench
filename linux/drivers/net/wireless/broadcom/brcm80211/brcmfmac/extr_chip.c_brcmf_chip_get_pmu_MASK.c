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
struct brcmf_core {int rev; } ;
struct brcmf_chip {int cc_caps_ext; } ;

/* Variables and functions */
 int BCMA_CC_CAP_EXT_AOB_PRESENT ; 
 int /*<<< orphan*/  BCMA_CORE_PMU ; 
 struct brcmf_core* FUNC0 (struct brcmf_chip*) ; 
 struct brcmf_core* FUNC1 (struct brcmf_chip*,int /*<<< orphan*/ ) ; 

struct brcmf_core *FUNC2(struct brcmf_chip *pub)
{
	struct brcmf_core *cc = FUNC0(pub);
	struct brcmf_core *pmu;

	/* See if there is separated PMU core available */
	if (cc->rev >= 35 &&
	    pub->cc_caps_ext & BCMA_CC_CAP_EXT_AOB_PRESENT) {
		pmu = FUNC1(pub, BCMA_CORE_PMU);
		if (pmu)
			return pmu;
	}

	/* Fallback to ChipCommon core for older hardware */
	return cc;
}