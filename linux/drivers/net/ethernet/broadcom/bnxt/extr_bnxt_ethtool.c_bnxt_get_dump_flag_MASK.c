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
struct net_device {int dummy; } ;
struct ethtool_dump {int version; int /*<<< orphan*/  len; } ;
struct TYPE_2__ {int hwrm_fw_maj_8b; int hwrm_fw_min_8b; int hwrm_fw_bld_8b; int hwrm_fw_rsvd_8b; } ;
struct bnxt {int hwrm_spec_code; TYPE_1__ ver_resp; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int FUNC0 (struct bnxt*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct bnxt* FUNC1 (struct net_device*) ; 

__attribute__((used)) static int FUNC2(struct net_device *dev, struct ethtool_dump *dump)
{
	struct bnxt *bp = FUNC1(dev);

	if (bp->hwrm_spec_code < 0x10801)
		return -EOPNOTSUPP;

	dump->version = bp->ver_resp.hwrm_fw_maj_8b << 24 |
			bp->ver_resp.hwrm_fw_min_8b << 16 |
			bp->ver_resp.hwrm_fw_bld_8b << 8 |
			bp->ver_resp.hwrm_fw_rsvd_8b;

	return FUNC0(bp, NULL, &dump->len);
}