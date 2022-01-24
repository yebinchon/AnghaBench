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
struct TYPE_3__ {int /*<<< orphan*/  draft; int /*<<< orphan*/  update; int /*<<< orphan*/  minor; int /*<<< orphan*/  major; } ;
struct TYPE_4__ {int /*<<< orphan*/  seg_name; int /*<<< orphan*/  seg_size; int /*<<< orphan*/  seg_type; TYPE_1__ seg_ver; } ;
struct ice_seg {TYPE_2__ hdr; } ;
struct ice_hw {int dummy; } ;
struct ice_buf_table {int /*<<< orphan*/  buf_count; int /*<<< orphan*/  buf_array; } ;
typedef  enum ice_status { ____Placeholder_ice_status } ice_status ;

/* Variables and functions */
 int /*<<< orphan*/  ICE_DBG_PKG ; 
 int /*<<< orphan*/  FUNC0 (struct ice_hw*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 int FUNC1 (struct ice_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ice_buf_table* FUNC2 (struct ice_seg*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static enum ice_status
FUNC4(struct ice_hw *hw, struct ice_seg *ice_seg)
{
	struct ice_buf_table *ice_buf_tbl;

	FUNC0(hw, ICE_DBG_PKG, "Segment version: %d.%d.%d.%d\n",
		  ice_seg->hdr.seg_ver.major, ice_seg->hdr.seg_ver.minor,
		  ice_seg->hdr.seg_ver.update, ice_seg->hdr.seg_ver.draft);

	FUNC0(hw, ICE_DBG_PKG, "Seg: type 0x%X, size %d, name %s\n",
		  FUNC3(ice_seg->hdr.seg_type),
		  FUNC3(ice_seg->hdr.seg_size), ice_seg->hdr.seg_name);

	ice_buf_tbl = FUNC2(ice_seg);

	FUNC0(hw, ICE_DBG_PKG, "Seg buf count: %d\n",
		  FUNC3(ice_buf_tbl->buf_count));

	return FUNC1(hw, ice_buf_tbl->buf_array,
				  FUNC3(ice_buf_tbl->buf_count));
}