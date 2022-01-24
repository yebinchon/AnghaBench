#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct brcmf_pub {int /*<<< orphan*/  feat_flags; } ;
struct brcmf_if {struct brcmf_pub* drvr; } ;
typedef  enum brcmf_feat_id { ____Placeholder_brcmf_feat_id } brcmf_feat_id ;
typedef  int /*<<< orphan*/  caps ;
struct TYPE_3__ {int feature; int /*<<< orphan*/  fwcap_id; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  INFO ; 
 int MAX_CAPS_BUFFER_SIZE ; 
 int /*<<< orphan*/  FUNC2 (struct brcmf_pub*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*) ; 
 char** brcmf_feat_names ; 
 int FUNC4 (struct brcmf_if*,char*,char*,int) ; 
 TYPE_1__* brcmf_fwcap_map ; 
 scalar_t__ FUNC5 (char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC6(struct brcmf_if *ifp)
{
	struct brcmf_pub *drvr = ifp->drvr;
	char caps[MAX_CAPS_BUFFER_SIZE];
	enum brcmf_feat_id id;
	int i, err;

	err = FUNC4(ifp, "cap", caps, sizeof(caps));
	if (err) {
		FUNC2(drvr, "could not get firmware cap (%d)\n", err);
		return;
	}

	FUNC3(INFO, "[ %s]\n", caps);

	for (i = 0; i < FUNC0(brcmf_fwcap_map); i++) {
		if (FUNC5(caps, brcmf_fwcap_map[i].fwcap_id, sizeof(caps))) {
			id = brcmf_fwcap_map[i].feature;
			FUNC3(INFO, "enabling feature: %s\n",
				  brcmf_feat_names[id]);
			ifp->drvr->feat_flags |= FUNC1(id);
		}
	}
}