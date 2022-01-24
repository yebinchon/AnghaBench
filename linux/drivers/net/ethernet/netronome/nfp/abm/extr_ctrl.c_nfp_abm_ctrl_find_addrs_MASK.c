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
struct nfp_rtsym {int dummy; } ;
struct nfp_pf {int /*<<< orphan*/  cpp; } ;
struct nfp_abm {int red_support; int num_bands; int num_prios; int action_mask; struct nfp_rtsym const* q_stats; struct nfp_rtsym const* qm_stats; struct nfp_rtsym const* q_lvls; int /*<<< orphan*/  dscp_mask; int /*<<< orphan*/  prio_map_len; int /*<<< orphan*/  pf_id; TYPE_1__* app; } ;
struct TYPE_2__ {struct nfp_pf* pf; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 
 scalar_t__ FUNC2 (struct nfp_rtsym const*) ; 
 int /*<<< orphan*/  NFP_ABM_ACT_MARK_DROP ; 
 int /*<<< orphan*/  NFP_ACT_MASK_SYM_NAME ; 
 int /*<<< orphan*/  NFP_NUM_BANDS_SYM_NAME ; 
 int /*<<< orphan*/  NFP_NUM_PRIOS_SYM_NAME ; 
 int /*<<< orphan*/  NFP_QLVL_STRIDE ; 
 int /*<<< orphan*/  NFP_QLVL_SYM_NAME ; 
 int /*<<< orphan*/  NFP_QMSTAT_STRIDE ; 
 int /*<<< orphan*/  NFP_QMSTAT_SYM_NAME ; 
 int /*<<< orphan*/  NFP_Q_STAT_STRIDE ; 
 int /*<<< orphan*/  NFP_Q_STAT_SYM_NAME ; 
 int /*<<< orphan*/  NFP_RED_SUPPORT_SYM_NAME ; 
 int FUNC3 (struct nfp_rtsym const*) ; 
 int U16_MAX ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 struct nfp_rtsym* FUNC5 (struct nfp_abm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct nfp_abm*) ; 
 scalar_t__ FUNC7 (struct nfp_abm*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int,int) ; 
 int FUNC10 (struct nfp_pf*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC11 (int) ; 

int FUNC12(struct nfp_abm *abm)
{
	struct nfp_pf *pf = abm->app->pf;
	const struct nfp_rtsym *sym;
	int res;

	abm->pf_id = FUNC8(pf->cpp);

	/* Check if Qdisc offloads are supported */
	res = FUNC10(pf, NFP_RED_SUPPORT_SYM_NAME, 1);
	if (res < 0)
		return res;
	abm->red_support = res;

	/* Read count of prios and prio bands */
	res = FUNC10(pf, NFP_NUM_BANDS_SYM_NAME, 1);
	if (res < 0)
		return res;
	abm->num_bands = res;

	res = FUNC10(pf, NFP_NUM_PRIOS_SYM_NAME, 1);
	if (res < 0)
		return res;
	abm->num_prios = res;

	/* Read available actions */
	res = FUNC10(pf, NFP_ACT_MASK_SYM_NAME,
					 FUNC0(NFP_ABM_ACT_MARK_DROP));
	if (res < 0)
		return res;
	abm->action_mask = res;

	abm->prio_map_len = FUNC6(abm);
	abm->dscp_mask = FUNC1(7, 8 - FUNC11(abm->num_prios));

	/* Check values are sane, U16_MAX is arbitrarily chosen as max */
	if (!FUNC4(abm->num_bands) || !FUNC4(abm->num_prios) ||
	    abm->num_bands > U16_MAX || abm->num_prios > U16_MAX ||
	    (abm->num_bands == 1) != (abm->num_prios == 1)) {
		FUNC9(pf->cpp,
			"invalid priomap description num bands: %u and num prios: %u\n",
			abm->num_bands, abm->num_prios);
		return -EINVAL;
	}

	/* Find level and stat symbols */
	if (!abm->red_support)
		return 0;

	sym = FUNC5(abm, NFP_QLVL_SYM_NAME,
					NFP_QLVL_STRIDE);
	if (FUNC2(sym))
		return FUNC3(sym);
	abm->q_lvls = sym;

	sym = FUNC5(abm, NFP_QMSTAT_SYM_NAME,
					NFP_QMSTAT_STRIDE);
	if (FUNC2(sym))
		return FUNC3(sym);
	abm->qm_stats = sym;

	if (FUNC7(abm)) {
		sym = FUNC5(abm, NFP_Q_STAT_SYM_NAME,
						NFP_Q_STAT_STRIDE);
		if (FUNC2(sym))
			return FUNC3(sym);
		abm->q_stats = sym;
	}

	return 0;
}