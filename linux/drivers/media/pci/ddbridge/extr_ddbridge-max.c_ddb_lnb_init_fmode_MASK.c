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
typedef  int u32 ;
struct TYPE_2__ {int fmode; int /*<<< orphan*/  lock; } ;
struct ddb_link {int nr; TYPE_1__ lnb; } ;
struct ddb {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  SEC_TONE_OFF ; 
 int /*<<< orphan*/  SEC_TONE_ON ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int) ; 
 scalar_t__ fmode_sat ; 
 int /*<<< orphan*/  FUNC1 (struct ddb*,int,int,scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ddb*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ old_quattro ; 

int FUNC5(struct ddb *dev, struct ddb_link *link, u32 fm)
{
	u32 l = link->nr;

	if (link->lnb.fmode == fm)
		return 0;
	FUNC0(dev->dev, "Set fmode link %u = %u\n", l, fm);
	FUNC3(&link->lnb.lock);
	if (fm == 2 || fm == 1) {
		if (fmode_sat >= 0) {
			FUNC1(dev, l, 0, fmode_sat, 0, 0);
			if (old_quattro) {
				FUNC1(dev, l, 1, fmode_sat, 0, 1);
				FUNC1(dev, l, 2, fmode_sat, 1, 0);
			} else {
				FUNC1(dev, l, 1, fmode_sat, 1, 0);
				FUNC1(dev, l, 2, fmode_sat, 0, 1);
			}
			FUNC1(dev, l, 3, fmode_sat, 1, 1);
		}
		FUNC2(dev, l, 0, SEC_TONE_OFF);
		if (old_quattro) {
			FUNC2(dev, l, 1, SEC_TONE_OFF);
			FUNC2(dev, l, 2, SEC_TONE_ON);
		} else {
			FUNC2(dev, l, 1, SEC_TONE_ON);
			FUNC2(dev, l, 2, SEC_TONE_OFF);
		}
		FUNC2(dev, l, 3, SEC_TONE_ON);
	}
	link->lnb.fmode = fm;
	FUNC4(&link->lnb.lock);
	return 0;
}