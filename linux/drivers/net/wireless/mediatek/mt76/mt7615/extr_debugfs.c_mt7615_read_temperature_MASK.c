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
struct mt7615_dev {int dummy; } ;

/* Variables and functions */
 struct mt7615_dev* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct mt7615_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,char*,int) ; 

__attribute__((used)) static int FUNC3(struct seq_file *s, void *data)
{
	struct mt7615_dev *dev = FUNC0(s->private);
	int temp;

	/* cpu */
	temp = FUNC1(dev, 0);
	FUNC2(s, "Temperature: %d\n", temp);

	return 0;
}