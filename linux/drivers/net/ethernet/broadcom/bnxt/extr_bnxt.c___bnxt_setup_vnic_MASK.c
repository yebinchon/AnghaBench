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
typedef  size_t u16 ;
struct bnxt_vnic_info {int flags; } ;
struct bnxt {int flags; int /*<<< orphan*/  dev; int /*<<< orphan*/  rsscos_nr_ctxs; struct bnxt_vnic_info* vnic_info; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct bnxt*) ; 
 int BNXT_FLAG_AGG_RINGS ; 
 int BNXT_VNIC_RFS_NEW_RSS_FLAG ; 
 int FUNC1 (struct bnxt*,size_t) ; 
 int FUNC2 (struct bnxt*,size_t,int) ; 
 int FUNC3 (struct bnxt*,size_t) ; 
 int FUNC4 (struct bnxt*,size_t,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,size_t,int) ; 

__attribute__((used)) static int FUNC6(struct bnxt *bp, u16 vnic_id)
{
	struct bnxt_vnic_info *vnic = &bp->vnic_info[vnic_id];
	int rc;

	if (vnic->flags & BNXT_VNIC_RFS_NEW_RSS_FLAG)
		goto skip_rss_ctx;

	/* allocate context for vnic */
	rc = FUNC2(bp, vnic_id, 0);
	if (rc) {
		FUNC5(bp->dev, "hwrm vnic %d alloc failure rc: %x\n",
			   vnic_id, rc);
		goto vnic_setup_err;
	}
	bp->rsscos_nr_ctxs++;

	if (FUNC0(bp)) {
		rc = FUNC2(bp, vnic_id, 1);
		if (rc) {
			FUNC5(bp->dev, "hwrm vnic %d cos ctx alloc failure rc: %x\n",
				   vnic_id, rc);
			goto vnic_setup_err;
		}
		bp->rsscos_nr_ctxs++;
	}

skip_rss_ctx:
	/* configure default vnic, ring grp */
	rc = FUNC1(bp, vnic_id);
	if (rc) {
		FUNC5(bp->dev, "hwrm vnic %d cfg failure rc: %x\n",
			   vnic_id, rc);
		goto vnic_setup_err;
	}

	/* Enable RSS hashing on vnic */
	rc = FUNC4(bp, vnic_id, true);
	if (rc) {
		FUNC5(bp->dev, "hwrm vnic %d set rss failure rc: %x\n",
			   vnic_id, rc);
		goto vnic_setup_err;
	}

	if (bp->flags & BNXT_FLAG_AGG_RINGS) {
		rc = FUNC3(bp, vnic_id);
		if (rc) {
			FUNC5(bp->dev, "hwrm vnic %d set hds failure rc: %x\n",
				   vnic_id, rc);
		}
	}

vnic_setup_err:
	return rc;
}