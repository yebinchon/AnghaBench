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
struct pvr2_string_table {unsigned int cnt; int /*<<< orphan*/ * lst; } ;
struct pvr2_hdw {int flag_modulefail; TYPE_1__* hdw_desc; } ;
struct pvr2_device_client_table {unsigned int cnt; int /*<<< orphan*/ * lst; } ;
struct TYPE_2__ {struct pvr2_device_client_table client_table; struct pvr2_string_table client_modules; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct pvr2_hdw*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct pvr2_hdw*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct pvr2_hdw *hdw)
{
	unsigned int idx;
	const struct pvr2_string_table *cm;
	const struct pvr2_device_client_table *ct;
	int okFl = !0;

	cm = &hdw->hdw_desc->client_modules;
	for (idx = 0; idx < cm->cnt; idx++) {
		FUNC2(cm->lst[idx]);
	}

	ct = &hdw->hdw_desc->client_table;
	for (idx = 0; idx < ct->cnt; idx++) {
		if (FUNC0(hdw, &ct->lst[idx]) < 0) okFl = 0;
	}
	if (!okFl) {
		hdw->flag_modulefail = !0;
		FUNC1(hdw);
	}
}