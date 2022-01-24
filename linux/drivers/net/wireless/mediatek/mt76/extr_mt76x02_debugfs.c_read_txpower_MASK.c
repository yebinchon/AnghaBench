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
struct seq_file {int /*<<< orphan*/  private; } ;
struct mt76x02_dev {int /*<<< orphan*/  target_power_delta; int /*<<< orphan*/  target_power; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct mt76x02_dev* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct seq_file*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct seq_file *file, void *data)
{
	struct mt76x02_dev *dev = FUNC1(file->private);

	FUNC3(file, "Target power: %d\n", dev->target_power);

	FUNC2(file, "Delta", dev->target_power_delta,
			    FUNC0(dev->target_power_delta));
	return 0;
}