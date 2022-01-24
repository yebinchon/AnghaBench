#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  power; int /*<<< orphan*/  width; int /*<<< orphan*/  period; int /*<<< orphan*/  n_pulses; } ;
struct mt7615_dev {TYPE_2__ mt76; TYPE_1__ radar_pattern; int /*<<< orphan*/  hw_pattern; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,struct dentry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,struct dentry*,struct mt7615_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,struct dentry*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,struct dentry*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,struct dentry*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  fops_radar_pattern ; 
 int /*<<< orphan*/  fops_scs ; 
 int /*<<< orphan*/  mt7615_radio_read ; 
 int /*<<< orphan*/  mt7615_read_temperature ; 
 struct dentry* FUNC5 (TYPE_2__*) ; 

int FUNC6(struct mt7615_dev *dev)
{
	struct dentry *dir;

	dir = FUNC5(&dev->mt76);
	if (!dir)
		return -ENOMEM;

	FUNC1("scs", 0600, dir, dev, &fops_scs);
	FUNC0(dev->mt76.dev, "radio", dir,
				    mt7615_radio_read);
	FUNC3("dfs_hw_pattern", 0400, dir, &dev->hw_pattern);
	/* test pattern knobs */
	FUNC4("pattern_len", 0600, dir,
			  &dev->radar_pattern.n_pulses);
	FUNC3("pulse_period", 0600, dir,
			   &dev->radar_pattern.period);
	FUNC2("pulse_width", 0600, dir,
			   &dev->radar_pattern.width);
	FUNC2("pulse_power", 0600, dir,
			   &dev->radar_pattern.power);
	FUNC1("radar_trigger", 0200, dir, dev,
			    &fops_radar_pattern);
	FUNC0(dev->mt76.dev, "temperature", dir,
				    mt7615_read_temperature);

	return 0;
}