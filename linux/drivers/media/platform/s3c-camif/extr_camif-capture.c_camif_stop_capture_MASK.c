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
struct camif_vp {int state; int /*<<< orphan*/  irq_queue; struct camif_dev* camif; } ;
struct camif_dev {int /*<<< orphan*/  slock; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAMIF_STOP_TIMEOUT ; 
 int ST_VP_ABORTING ; 
 int ST_VP_LASTIRQ ; 
 int ST_VP_OFF ; 
 int /*<<< orphan*/  FUNC0 (struct camif_vp*) ; 
 int /*<<< orphan*/  FUNC1 (struct camif_vp*,int) ; 
 int FUNC2 (struct camif_vp*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct camif_vp*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct camif_vp *vp)
{
	struct camif_dev *camif = vp->camif;
	unsigned long flags;
	int ret;

	if (!FUNC4(vp))
		return 0;

	FUNC5(&camif->slock, flags);
	vp->state &= ~(ST_VP_OFF | ST_VP_LASTIRQ);
	vp->state |= ST_VP_ABORTING;
	FUNC6(&camif->slock, flags);

	ret = FUNC7(vp->irq_queue,
			   !(vp->state & ST_VP_ABORTING),
			   FUNC3(CAMIF_STOP_TIMEOUT));

	FUNC5(&camif->slock, flags);

	if (ret == 0 && !(vp->state & ST_VP_OFF)) {
		/* Timed out, forcibly stop capture */
		vp->state &= ~(ST_VP_OFF | ST_VP_ABORTING |
			       ST_VP_LASTIRQ);

		FUNC0(vp);
		FUNC1(vp, false);
	}

	FUNC6(&camif->slock, flags);

	return FUNC2(vp);
}