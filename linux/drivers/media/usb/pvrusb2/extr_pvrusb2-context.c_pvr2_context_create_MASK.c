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
struct usb_interface {int dummy; } ;
struct usb_device_id {int dummy; } ;
struct pvr2_context {void (* setup_func ) (struct pvr2_context*) ;int /*<<< orphan*/  hdw; struct pvr2_context* exist_next; struct pvr2_context* exist_prev; int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PVR2_TRACE_CTXT ; 
 struct pvr2_context* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct pvr2_context*) ; 
 struct pvr2_context* pvr2_context_exist_first ; 
 struct pvr2_context* pvr2_context_exist_last ; 
 int /*<<< orphan*/  pvr2_context_mutex ; 
 int /*<<< orphan*/  FUNC5 (struct pvr2_context*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_interface*,struct usb_device_id const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,struct pvr2_context*) ; 

struct pvr2_context *FUNC8(
	struct usb_interface *intf,
	const struct usb_device_id *devid,
	void (*setup_func)(struct pvr2_context *))
{
	struct pvr2_context *mp = NULL;
	mp = FUNC0(sizeof(*mp),GFP_KERNEL);
	if (!mp) goto done;
	FUNC7(PVR2_TRACE_CTXT,"pvr2_context %p (create)",mp);
	mp->setup_func = setup_func;
	FUNC1(&mp->mutex);
	FUNC2(&pvr2_context_mutex);
	mp->exist_prev = pvr2_context_exist_last;
	mp->exist_next = NULL;
	pvr2_context_exist_last = mp;
	if (mp->exist_prev) {
		mp->exist_prev->exist_next = mp;
	} else {
		pvr2_context_exist_first = mp;
	}
	FUNC3(&pvr2_context_mutex);
	mp->hdw = FUNC6(intf,devid);
	if (!mp->hdw) {
		FUNC4(mp);
		mp = NULL;
		goto done;
	}
	FUNC5(mp, !0);
 done:
	return mp;
}