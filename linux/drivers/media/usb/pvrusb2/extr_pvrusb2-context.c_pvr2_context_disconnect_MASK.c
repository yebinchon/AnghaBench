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
struct pvr2_context {int disconnect_flag; int /*<<< orphan*/  hdw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pvr2_context*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(struct pvr2_context *mp)
{
	FUNC1(mp->hdw);
	mp->disconnect_flag = !0;
	FUNC0(mp);
}