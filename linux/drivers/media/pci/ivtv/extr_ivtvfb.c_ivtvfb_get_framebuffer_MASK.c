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
typedef  int /*<<< orphan*/  u32 ;
struct ivtv {int dummy; } ;

/* Variables and functions */
 int CX2341X_MBOX_MAX_DATA ; 
 int /*<<< orphan*/  CX2341X_OSD_GET_FRAMEBUFFER ; 
 int /*<<< orphan*/  FUNC0 (struct ivtv*,char*) ; 
 int FUNC1 (struct ivtv*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct ivtv *itv, u32 *fbbase,
				       u32 *fblength)
{
	u32 data[CX2341X_MBOX_MAX_DATA];
	int rc;

	FUNC0(itv, "ivtvfb_get_framebuffer");
	rc = FUNC1(itv, data, CX2341X_OSD_GET_FRAMEBUFFER, 0);
	*fbbase = data[0];
	*fblength = data[1];
	return rc;
}