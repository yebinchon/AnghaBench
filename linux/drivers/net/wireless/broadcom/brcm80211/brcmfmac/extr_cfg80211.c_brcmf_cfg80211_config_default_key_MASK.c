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
typedef  int u8 ;
typedef  int u32 ;
struct wiphy {int dummy; } ;
struct net_device {int dummy; } ;
struct brcmf_pub {int dummy; } ;
struct brcmf_if {int /*<<< orphan*/  vif; struct brcmf_pub* drvr; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  BRCMF_C_SET_KEY_PRIMARY ; 
 int /*<<< orphan*/  CONN ; 
 scalar_t__ EIO ; 
 int /*<<< orphan*/  TRACE ; 
 int WEP_ENABLED ; 
 int /*<<< orphan*/  FUNC0 (struct brcmf_pub*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC2 (struct brcmf_if*,char*,int*) ; 
 scalar_t__ FUNC3 (struct brcmf_if*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct brcmf_if* FUNC5 (struct net_device*) ; 

__attribute__((used)) static s32
FUNC6(struct wiphy *wiphy, struct net_device *ndev,
				  u8 key_idx, bool unicast, bool multicast)
{
	struct brcmf_if *ifp = FUNC5(ndev);
	struct brcmf_pub *drvr = ifp->drvr;
	u32 index;
	u32 wsec;
	s32 err = 0;

	FUNC1(TRACE, "Enter\n");
	FUNC1(CONN, "key index (%d)\n", key_idx);
	if (!FUNC4(ifp->vif))
		return -EIO;

	err = FUNC2(ifp, "wsec", &wsec);
	if (err) {
		FUNC0(drvr, "WLC_GET_WSEC error (%d)\n", err);
		goto done;
	}

	if (wsec & WEP_ENABLED) {
		/* Just select a new current key */
		index = key_idx;
		err = FUNC3(ifp,
					    BRCMF_C_SET_KEY_PRIMARY, index);
		if (err)
			FUNC0(drvr, "error (%d)\n", err);
	}
done:
	FUNC1(TRACE, "Exit\n");
	return err;
}