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
struct rc_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 

__attribute__((used)) static int FUNC4(struct rc_dev *dev, unsigned int *tx_buf,
		     unsigned int count)
{
	unsigned long flags;
	int i;

	FUNC1(flags);
	for (i = 0; i < count;) {
		if (tx_buf[i])
			FUNC2(tx_buf[i]);
		i++;
		if (i >= count)
			break;
		if (tx_buf[i])
			FUNC3(tx_buf[i]);
		i++;
	}
	FUNC0(flags);

	return count;
}