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
struct seq_file {int /*<<< orphan*/  private; } ;
struct TYPE_2__ {int /*<<< orphan*/  agc_gain_adjust; int /*<<< orphan*/  false_cca; int /*<<< orphan*/  low_gain; int /*<<< orphan*/  avg_rssi_all; } ;
struct mt76x02_dev {TYPE_1__ cal; } ;

/* Variables and functions */
 struct mt76x02_dev* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct seq_file *file, void *data)
{
	struct mt76x02_dev *dev = FUNC0(file->private);

	FUNC1(file, "avg_rssi: %d\n", dev->cal.avg_rssi_all);
	FUNC1(file, "low_gain: %d\n", dev->cal.low_gain);
	FUNC1(file, "false_cca: %d\n", dev->cal.false_cca);
	FUNC1(file, "agc_gain_adjust: %d\n", dev->cal.agc_gain_adjust);

	return 0;
}