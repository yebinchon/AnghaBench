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
struct tty_struct {scalar_t__ disc_data; } ;
struct slcan {scalar_t__ magic; TYPE_2__* dev; int /*<<< orphan*/  flags; } ;
struct TYPE_3__ {int /*<<< orphan*/  rx_errors; } ;
struct TYPE_4__ {TYPE_1__ stats; } ;

/* Variables and functions */
 scalar_t__ SLCAN_MAGIC ; 
 int /*<<< orphan*/  SLF_ERROR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (struct slcan*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct tty_struct *tty,
			      const unsigned char *cp, char *fp, int count)
{
	struct slcan *sl = (struct slcan *) tty->disc_data;

	if (!sl || sl->magic != SLCAN_MAGIC || !FUNC0(sl->dev))
		return;

	/* Read the characters out of the buffer */
	while (count--) {
		if (fp && *fp++) {
			if (!FUNC2(SLF_ERROR, &sl->flags))
				sl->dev->stats.rx_errors++;
			cp++;
			continue;
		}
		FUNC1(sl, *cp++);
	}
}