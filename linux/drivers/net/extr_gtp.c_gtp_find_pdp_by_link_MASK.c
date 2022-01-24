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
struct pdp_ctx {int dummy; } ;
struct nlattr {int dummy; } ;
struct net {int dummy; } ;
struct gtp_dev {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENODEV ; 
 struct pdp_ctx* FUNC0 (int /*<<< orphan*/ ) ; 
 size_t GTPA_I_TEI ; 
 size_t GTPA_MS_ADDRESS ; 
 size_t GTPA_TID ; 
 size_t GTPA_VERSION ; 
 scalar_t__ GTP_V0 ; 
 scalar_t__ GTP_V1 ; 
 struct pdp_ctx* FUNC1 (struct gtp_dev*,int /*<<< orphan*/ ) ; 
 struct pdp_ctx* FUNC2 (struct gtp_dev*,scalar_t__) ; 
 struct gtp_dev* FUNC3 (struct net*,struct nlattr**) ; 
 struct pdp_ctx* FUNC4 (struct gtp_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct nlattr*) ; 
 scalar_t__ FUNC6 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC7 (struct nlattr*) ; 

__attribute__((used)) static struct pdp_ctx *FUNC8(struct net *net,
					    struct nlattr *nla[])
{
	struct gtp_dev *gtp;

	gtp = FUNC3(net, nla);
	if (!gtp)
		return FUNC0(-ENODEV);

	if (nla[GTPA_MS_ADDRESS]) {
		__be32 ip = FUNC5(nla[GTPA_MS_ADDRESS]);

		return FUNC4(gtp, ip);
	} else if (nla[GTPA_VERSION]) {
		u32 gtp_version = FUNC6(nla[GTPA_VERSION]);

		if (gtp_version == GTP_V0 && nla[GTPA_TID])
			return FUNC1(gtp, FUNC7(nla[GTPA_TID]));
		else if (gtp_version == GTP_V1 && nla[GTPA_I_TEI])
			return FUNC2(gtp, FUNC6(nla[GTPA_I_TEI]));
	}

	return FUNC0(-EINVAL);
}