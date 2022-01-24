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
struct net_device {int /*<<< orphan*/  irq; int /*<<< orphan*/  name; struct airo_info* ml_priv; } ;
struct airo_info {int /*<<< orphan*/  flags; int /*<<< orphan*/  airo_thread_task; int /*<<< orphan*/  jobs; struct net_device* wifidev; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FLAG_COMMIT ; 
 int /*<<< orphan*/  FLAG_FLASHING ; 
 int /*<<< orphan*/  FLAG_RADIO_DOWN ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  JOB_DIE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  airo_interrupt ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  airo_thread ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct airo_info*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct airo_info*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct airo_info*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct net_device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct airo_info*) ; 
 int /*<<< orphan*/  FUNC14 (struct airo_info*,int) ; 

__attribute__((used)) static int FUNC15(struct net_device *dev) {
	struct airo_info *ai = dev->ml_priv;
	int rc = 0;

	if (FUNC12(FLAG_FLASHING, &ai->flags))
		return -EIO;

	/* Make sure the card is configured.
	 * Wireless Extensions may postpone config changes until the card
	 * is open (to pipeline changes and speed-up card setup). If
	 * those changes are not yet committed, do it now - Jean II */
	if (FUNC12(FLAG_COMMIT, &ai->flags)) {
		FUNC4(ai, 1);
		FUNC14(ai, 1);
	}

	if (ai->wifidev != dev) {
		FUNC3(JOB_DIE, &ai->jobs);
		ai->airo_thread_task = FUNC7(airo_thread, dev, "%s",
						   dev->name);
		if (FUNC0(ai->airo_thread_task))
			return (int)FUNC1(ai->airo_thread_task);

		rc = FUNC10(dev->irq, airo_interrupt, IRQF_SHARED,
			dev->name, dev);
		if (rc) {
			FUNC2(dev->name,
				"register interrupt %d failed, rc %d",
				dev->irq, rc);
			FUNC11(JOB_DIE, &ai->jobs);
			FUNC8(ai->airo_thread_task);
			return rc;
		}

		/* Power on the MAC controller (which may have been disabled) */
		FUNC3(FLAG_RADIO_DOWN, &ai->flags);
		FUNC6(ai);

		FUNC13(ai);
	}
	FUNC5(ai, 1);

	FUNC9(dev);
	return 0;
}