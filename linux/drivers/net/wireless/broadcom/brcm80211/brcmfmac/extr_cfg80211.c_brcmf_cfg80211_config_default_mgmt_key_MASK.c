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
typedef  int /*<<< orphan*/  u8 ;
struct wiphy {int dummy; } ;
struct net_device {int dummy; } ;
struct brcmf_if {int dummy; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int /*<<< orphan*/  BRCMF_FEAT_MFP ; 
 int /*<<< orphan*/  EOPNOTSUPP ; 
 int /*<<< orphan*/  INFO ; 
 int /*<<< orphan*/  TRACE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC1 (struct brcmf_if*,int /*<<< orphan*/ ) ; 
 struct brcmf_if* FUNC2 (struct net_device*) ; 

__attribute__((used)) static s32
FUNC3(struct wiphy *wiphy,
				       struct net_device *ndev, u8 key_idx)
{
	struct brcmf_if *ifp = FUNC2(ndev);

	FUNC0(TRACE, "Enter key_idx %d\n", key_idx);

	if (FUNC1(ifp, BRCMF_FEAT_MFP))
		return 0;

	FUNC0(INFO, "Not supported\n");

	return -EOPNOTSUPP;
}