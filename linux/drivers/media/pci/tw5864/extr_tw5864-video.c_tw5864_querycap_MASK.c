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
struct v4l2_capability {int /*<<< orphan*/  bus_info; int /*<<< orphan*/  card; int /*<<< orphan*/  driver; } ;
struct tw5864_input {int nr; TYPE_1__* root; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  pci; } ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 struct tw5864_input* FUNC4 (struct file*) ; 

__attribute__((used)) static int FUNC5(struct file *file, void *priv,
			   struct v4l2_capability *cap)
{
	struct tw5864_input *input = FUNC4(file);

	FUNC3(cap->driver, "tw5864", sizeof(cap->driver));
	FUNC1(cap->card, sizeof(cap->card), "TW5864 Encoder %d",
		 input->nr);
	FUNC2(cap->bus_info, "PCI:%s", FUNC0(input->root->pci));
	return 0;
}