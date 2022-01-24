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
struct brcmf_pno_info {int /*<<< orphan*/  req_lock; } ;
struct brcmf_cfg80211_info {struct brcmf_pno_info* pno; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  TRACE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct brcmf_pno_info* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(struct brcmf_cfg80211_info *cfg)
{
	struct brcmf_pno_info *pi;

	FUNC0(TRACE, "enter\n");
	pi = FUNC1(sizeof(*pi), GFP_KERNEL);
	if (!pi)
		return -ENOMEM;

	cfg->pno = pi;
	FUNC2(&pi->req_lock);
	return 0;
}