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
struct saa7146_dev {scalar_t__ ext_priv; } ;
struct budget {int video_port; int /*<<< orphan*/  feedlock; scalar_t__ feeding; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct budget*) ; 
 int /*<<< orphan*/  FUNC3 (struct budget*) ; 

void FUNC4(struct saa7146_dev *dev, int video_port)
{
	struct budget *budget = (struct budget *) dev->ext_priv;

	FUNC0(&budget->feedlock);
	budget->video_port = video_port;
	if (budget->feeding) {
		FUNC3(budget);
		FUNC2(budget);
	}
	FUNC1(&budget->feedlock);
}