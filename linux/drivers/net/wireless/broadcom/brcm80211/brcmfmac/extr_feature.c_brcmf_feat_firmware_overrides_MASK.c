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
typedef  int u32 ;
struct brcmf_pub {int feat_flags; int /*<<< orphan*/  fwver; } ;
struct brcmf_feat_fwfeat {int feat_flags; int /*<<< orphan*/  fwid; } ;

/* Variables and functions */
 int FUNC0 (struct brcmf_feat_fwfeat*) ; 
 int FUNC1 (int) ; 
 int BRCMF_FEAT_LAST ; 
 int /*<<< orphan*/  INFO ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 struct brcmf_feat_fwfeat* brcmf_feat_fwfeat_map ; 
 int /*<<< orphan*/ * brcmf_feat_names ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct brcmf_pub *drv)
{
	const struct brcmf_feat_fwfeat *e;
	u32 feat_flags = 0;
	int i;

	for (i = 0; i < FUNC0(brcmf_feat_fwfeat_map); i++) {
		e = &brcmf_feat_fwfeat_map[i];
		if (!FUNC3(e->fwid, drv->fwver)) {
			feat_flags = e->feat_flags;
			break;
		}
	}

	if (!feat_flags)
		return;

	for (i = 0; i < BRCMF_FEAT_LAST; i++)
		if (feat_flags & FUNC1(i))
			FUNC2(INFO, "enabling firmware feature: %s\n",
				  brcmf_feat_names[i]);
	drv->feat_flags |= feat_flags;
}