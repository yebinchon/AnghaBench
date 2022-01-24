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
struct tty_struct {int index; struct pti_tty* driver_data; } ;
struct tty_driver {int dummy; } ;
struct pti_tty {int /*<<< orphan*/ * mc; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int PTITTY_MINOR_START ; 
 int /*<<< orphan*/  FUNC0 (struct pti_tty*) ; 
 struct pti_tty* FUNC1 (int,int /*<<< orphan*/ ) ; 
 void* FUNC2 (int,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct tty_driver*,struct tty_struct*) ; 

__attribute__((used)) static int FUNC4(struct tty_driver *driver, struct tty_struct *tty)
{
	int idx = tty->index;
	struct pti_tty *pti_tty_data;
	int ret = FUNC3(driver, tty);

	if (ret == 0) {
		pti_tty_data = FUNC1(sizeof(struct pti_tty), GFP_KERNEL);
		if (pti_tty_data == NULL)
			return -ENOMEM;

		if (idx == PTITTY_MINOR_START)
			pti_tty_data->mc = FUNC2(0, NULL);
		else
			pti_tty_data->mc = FUNC2(2, NULL);

		if (pti_tty_data->mc == NULL) {
			FUNC0(pti_tty_data);
			return -ENXIO;
		}
		tty->driver_data = pti_tty_data;
	}

	return ret;
}