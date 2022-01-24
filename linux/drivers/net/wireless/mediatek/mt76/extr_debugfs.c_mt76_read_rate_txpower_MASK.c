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
struct TYPE_2__ {int /*<<< orphan*/  vht; int /*<<< orphan*/  ht; int /*<<< orphan*/  stbc; int /*<<< orphan*/  ofdm; int /*<<< orphan*/  cck; } ;
struct mt76_dev {TYPE_1__ rate_power; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct mt76_dev* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct seq_file *s, void *data)
{
	struct mt76_dev *dev = FUNC1(s->private);

	FUNC2(s, "CCK", dev->rate_power.cck,
			    FUNC0(dev->rate_power.cck));
	FUNC2(s, "OFDM", dev->rate_power.ofdm,
			    FUNC0(dev->rate_power.ofdm));
	FUNC2(s, "STBC", dev->rate_power.stbc,
			    FUNC0(dev->rate_power.stbc));
	FUNC2(s, "HT", dev->rate_power.ht,
			    FUNC0(dev->rate_power.ht));
	FUNC2(s, "VHT", dev->rate_power.vht,
			    FUNC0(dev->rate_power.vht));
	return 0;
}