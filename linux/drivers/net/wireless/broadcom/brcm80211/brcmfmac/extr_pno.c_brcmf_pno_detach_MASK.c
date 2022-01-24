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
struct brcmf_pno_info {int /*<<< orphan*/  req_lock; int /*<<< orphan*/  n_reqs; } ;
struct brcmf_cfg80211_info {struct brcmf_pno_info* pno; } ;

/* Variables and functions */
 int /*<<< orphan*/  TRACE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct brcmf_pno_info*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct brcmf_cfg80211_info *cfg)
{
	struct brcmf_pno_info *pi;

	FUNC1(TRACE, "enter\n");
	pi = cfg->pno;
	cfg->pno = NULL;

	FUNC0(pi->n_reqs);
	FUNC3(&pi->req_lock);
	FUNC2(pi);
}