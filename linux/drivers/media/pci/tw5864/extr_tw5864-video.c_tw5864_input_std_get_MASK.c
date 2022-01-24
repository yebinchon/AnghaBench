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
typedef  int u8 ;
struct tw5864_input {int /*<<< orphan*/  nr; struct tw5864_dev* root; } ;
struct tw5864_dev {TYPE_1__* pci; } ;
typedef  enum tw5864_vid_std { ____Placeholder_tw5864_vid_std } tw5864_vid_std ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct tw5864_input *input,
				enum tw5864_vid_std *std)
{
	struct tw5864_dev *dev = input->root;
	u8 std_reg = FUNC2(FUNC0(input->nr));

	*std = (std_reg & 0x70) >> 4;

	if (std_reg & 0x80) {
		FUNC1(&dev->pci->dev,
			"Video format detection is in progress, please wait\n");
		return -EAGAIN;
	}

	return 0;
}