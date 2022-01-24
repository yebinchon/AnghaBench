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
typedef  scalar_t__ u32 ;
struct brcmf_pub {int /*<<< orphan*/  proto_block; int /*<<< orphan*/  proto_buf; } ;
struct brcmf_if {int /*<<< orphan*/  bsscfgidx; int /*<<< orphan*/  ifidx; struct brcmf_pub* drvr; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int /*<<< orphan*/  BRCMF_C_SET_VAR ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  EPERM ; 
 int /*<<< orphan*/  FIL ; 
 int /*<<< orphan*/  MAX_HEX_DUMP_LEN ; 
 int /*<<< orphan*/  FUNC1 (struct brcmf_pub*,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*,void*,scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct brcmf_if*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  uint ; 

s32
FUNC9(struct brcmf_if *ifp, char *name,
			  void *data, u32 len)
{
	struct brcmf_pub *drvr = ifp->drvr;
	s32 err;
	u32 buflen;

	FUNC7(&drvr->proto_block);

	FUNC3(FIL, "ifidx=%d, bsscfgidx=%d, name=%s, len=%d\n", ifp->ifidx,
		  ifp->bsscfgidx, name, len);
	FUNC4(FUNC0(), data,
			   FUNC6(uint, len, MAX_HEX_DUMP_LEN), "data\n");

	buflen = FUNC2(ifp->bsscfgidx, name, data, len,
				     drvr->proto_buf, sizeof(drvr->proto_buf));
	if (buflen) {
		err = FUNC5(ifp, BRCMF_C_SET_VAR, drvr->proto_buf,
					 buflen, true);
	} else {
		err = -EPERM;
		FUNC1(drvr, "Creating bsscfg failed\n");
	}

	FUNC8(&drvr->proto_block);
	return err;
}