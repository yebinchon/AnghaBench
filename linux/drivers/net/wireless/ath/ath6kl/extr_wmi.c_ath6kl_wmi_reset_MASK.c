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
struct wmi {int /*<<< orphan*/  lock; int /*<<< orphan*/  stream_exist_for_ac; scalar_t__ fat_pipe_exist; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct wmi *wmi)
{
	FUNC1(&wmi->lock);

	wmi->fat_pipe_exist = 0;
	FUNC0(wmi->stream_exist_for_ac, 0, sizeof(wmi->stream_exist_for_ac));

	FUNC2(&wmi->lock);
}