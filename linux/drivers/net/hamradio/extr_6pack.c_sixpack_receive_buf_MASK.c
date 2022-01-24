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
struct tty_struct {int dummy; } ;
struct sixpack {TYPE_2__* dev; int /*<<< orphan*/  flags; } ;
struct TYPE_3__ {int /*<<< orphan*/  rx_errors; } ;
struct TYPE_4__ {TYPE_1__ stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  SIXPF_ERROR ; 
 int /*<<< orphan*/  FUNC0 (struct sixpack*,unsigned char const*,int) ; 
 struct sixpack* FUNC1 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC2 (struct sixpack*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct tty_struct*) ; 

__attribute__((used)) static void FUNC5(struct tty_struct *tty,
	const unsigned char *cp, char *fp, int count)
{
	struct sixpack *sp;
	int count1;

	if (!count)
		return;

	sp = FUNC1(tty);
	if (!sp)
		return;

	/* Read the characters out of the buffer */
	count1 = count;
	while (count) {
		count--;
		if (fp && *fp++) {
			if (!FUNC3(SIXPF_ERROR, &sp->flags))
				sp->dev->stats.rx_errors++;
			continue;
		}
	}
	FUNC0(sp, cp, count1);

	FUNC2(sp);
	FUNC4(tty);
}