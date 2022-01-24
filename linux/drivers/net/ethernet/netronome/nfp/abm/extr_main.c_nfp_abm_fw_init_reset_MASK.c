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
struct nfp_abm {unsigned int num_bands; int /*<<< orphan*/  red_support; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFP_ABM_ACT_DROP ; 
 int /*<<< orphan*/  NFP_ABM_LVL_INFINITY ; 
 unsigned int NFP_NET_MAX_RX_RINGS ; 
 int /*<<< orphan*/  FUNC0 (struct nfp_abm*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nfp_abm*,unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct nfp_abm*) ; 

__attribute__((used)) static int FUNC3(struct nfp_abm *abm)
{
	unsigned int i;

	if (!abm->red_support)
		return 0;

	for (i = 0; i < abm->num_bands * NFP_NET_MAX_RX_RINGS; i++) {
		FUNC1(abm, i, NFP_ABM_LVL_INFINITY);
		FUNC0(abm, i, NFP_ABM_ACT_DROP);
	}

	return FUNC2(abm);
}