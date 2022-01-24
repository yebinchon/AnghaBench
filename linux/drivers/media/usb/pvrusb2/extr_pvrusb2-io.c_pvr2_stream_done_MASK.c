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
struct pvr2_stream {int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct pvr2_stream*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pvr2_stream*) ; 

__attribute__((used)) static void FUNC4(struct pvr2_stream *sp)
{
	FUNC0(&sp->mutex); do {
		FUNC3(sp);
		FUNC2(sp, 0);
	} while (0); FUNC1(&sp->mutex);
}