#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct TYPE_4__ {int /*<<< orphan*/  sq_last_status; } ;
struct ice_hw {TYPE_2__ adminq; int /*<<< orphan*/  pkg_dwnld_status; } ;
struct ice_buf_hdr {TYPE_1__* section_entry; int /*<<< orphan*/  section_count; } ;
struct ice_buf {int dummy; } ;
typedef  enum ice_status { ____Placeholder_ice_status } ice_status ;
struct TYPE_3__ {int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  ICE_AQ_RC_EEXIST ; 
 int /*<<< orphan*/  ICE_AQ_RC_OK ; 
 int /*<<< orphan*/  ICE_DBG_PKG ; 
 int ICE_ERR_AQ_NO_WORK ; 
 int ICE_ERR_PARAM ; 
 int ICE_METADATA_BUF ; 
 int /*<<< orphan*/  ICE_PKG_BUF_SIZE ; 
 int /*<<< orphan*/  ICE_RES_WRITE ; 
 int FUNC0 (struct ice_hw*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ice_hw*,struct ice_buf_hdr*,int /*<<< orphan*/ ,int,scalar_t__*,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ice_hw*,int /*<<< orphan*/ ,char*,int,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct ice_hw*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static enum ice_status
FUNC6(struct ice_hw *hw, struct ice_buf *bufs, u32 count)
{
	enum ice_status status;
	struct ice_buf_hdr *bh;
	u32 offset, info, i;

	if (!bufs || !count)
		return ICE_ERR_PARAM;

	/* If the first buffer's first section has its metadata bit set
	 * then there are no buffers to be downloaded, and the operation is
	 * considered a success.
	 */
	bh = (struct ice_buf_hdr *)bufs;
	if (FUNC5(bh->section_entry[0].type) & ICE_METADATA_BUF)
		return 0;

	/* reset pkg_dwnld_status in case this function is called in the
	 * reset/rebuild flow
	 */
	hw->pkg_dwnld_status = ICE_AQ_RC_OK;

	status = FUNC0(hw, ICE_RES_WRITE);
	if (status) {
		if (status == ICE_ERR_AQ_NO_WORK)
			hw->pkg_dwnld_status = ICE_AQ_RC_EEXIST;
		else
			hw->pkg_dwnld_status = hw->adminq.sq_last_status;
		return status;
	}

	for (i = 0; i < count; i++) {
		bool last = ((i + 1) == count);

		if (!last) {
			/* check next buffer for metadata flag */
			bh = (struct ice_buf_hdr *)(bufs + i + 1);

			/* A set metadata flag in the next buffer will signal
			 * that the current buffer will be the last buffer
			 * downloaded
			 */
			if (FUNC4(bh->section_count))
				if (FUNC5(bh->section_entry[0].type) &
				    ICE_METADATA_BUF)
					last = true;
		}

		bh = (struct ice_buf_hdr *)(bufs + i);

		status = FUNC1(hw, bh, ICE_PKG_BUF_SIZE, last,
					     &offset, &info, NULL);

		/* Save AQ status from download package */
		hw->pkg_dwnld_status = hw->adminq.sq_last_status;
		if (status) {
			FUNC2(hw, ICE_DBG_PKG,
				  "Pkg download failed: err %d off %d inf %d\n",
				  status, offset, info);

			break;
		}

		if (last)
			break;
	}

	FUNC3(hw);

	return status;
}