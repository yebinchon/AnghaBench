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
struct tw5864_input {scalar_t__ enabled; int /*<<< orphan*/  nr; struct tw5864_dev* root; } ;
struct tw5864_dev {int /*<<< orphan*/  slock; TYPE_1__* pci; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC3(struct tw5864_input *input)
{
	struct tw5864_dev *dev = input->root;
	unsigned long flags;

	FUNC0(&dev->pci->dev, "Disabling channel %d\n", input->nr);

	FUNC1(&dev->slock, flags);
	input->enabled = 0;
	FUNC2(&dev->slock, flags);
	return 0;
}