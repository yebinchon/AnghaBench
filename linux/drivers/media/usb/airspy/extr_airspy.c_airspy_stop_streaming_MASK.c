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
struct vb2_queue {int dummy; } ;
struct airspy {int /*<<< orphan*/  v4l2_lock; int /*<<< orphan*/  flags; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_RECEIVER_MODE ; 
 int /*<<< orphan*/  POWER_ON ; 
 int /*<<< orphan*/  FUNC0 (struct airspy*) ; 
 int /*<<< orphan*/  FUNC1 (struct airspy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct airspy*) ; 
 int /*<<< orphan*/  FUNC3 (struct airspy*) ; 
 int /*<<< orphan*/  FUNC4 (struct airspy*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 struct airspy* FUNC9 (struct vb2_queue*) ; 

__attribute__((used)) static void FUNC10(struct vb2_queue *vq)
{
	struct airspy *s = FUNC9(vq);

	FUNC6(s->dev, "\n");

	FUNC7(&s->v4l2_lock);

	/* stop hardware streaming */
	FUNC1(s, CMD_RECEIVER_MODE, 0, 0, NULL, 0);

	FUNC4(s);
	FUNC3(s);
	FUNC2(s);

	FUNC0(s);

	FUNC5(POWER_ON, &s->flags);

	FUNC8(&s->v4l2_lock);
}