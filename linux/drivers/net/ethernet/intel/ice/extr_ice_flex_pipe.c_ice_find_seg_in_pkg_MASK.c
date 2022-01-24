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
typedef  int /*<<< orphan*/  u8 ;
typedef  size_t u32 ;
struct TYPE_2__ {int /*<<< orphan*/  draft; int /*<<< orphan*/  update; int /*<<< orphan*/  minor; int /*<<< orphan*/  major; } ;
struct ice_pkg_hdr {int /*<<< orphan*/ * seg_offset; int /*<<< orphan*/  seg_count; TYPE_1__ format_ver; } ;
struct ice_hw {int dummy; } ;
struct ice_generic_seg_hdr {int /*<<< orphan*/  seg_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  ICE_DBG_PKG ; 
 int /*<<< orphan*/  FUNC0 (struct ice_hw*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct ice_generic_seg_hdr *
FUNC2(struct ice_hw *hw, u32 seg_type,
		    struct ice_pkg_hdr *pkg_hdr)
{
	u32 i;

	FUNC0(hw, ICE_DBG_PKG, "Package format version: %d.%d.%d.%d\n",
		  pkg_hdr->format_ver.major, pkg_hdr->format_ver.minor,
		  pkg_hdr->format_ver.update, pkg_hdr->format_ver.draft);

	/* Search all package segments for the requested segment type */
	for (i = 0; i < FUNC1(pkg_hdr->seg_count); i++) {
		struct ice_generic_seg_hdr *seg;

		seg = (struct ice_generic_seg_hdr *)
			((u8 *)pkg_hdr + FUNC1(pkg_hdr->seg_offset[i]));

		if (FUNC1(seg->seg_type) == seg_type)
			return seg;
	}

	return NULL;
}