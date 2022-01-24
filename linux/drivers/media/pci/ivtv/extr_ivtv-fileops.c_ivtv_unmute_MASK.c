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
struct ivtv {int /*<<< orphan*/  capturing; } ;

/* Variables and functions */
 int /*<<< orphan*/  CX2341X_ENC_MISC ; 
 int /*<<< orphan*/  CX2341X_ENC_MUTE_AUDIO ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ivtv*,int /*<<< orphan*/ ,int,int) ; 

void FUNC4(struct ivtv *itv)
{
	if (FUNC1(&itv->capturing)) {
		FUNC2(100, 0);
		FUNC3(itv, CX2341X_ENC_MISC, 1, 12);
		FUNC3(itv, CX2341X_ENC_MUTE_AUDIO, 1, 0);
	}
	FUNC0("Unmute\n");
}