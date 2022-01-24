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
struct ppp_file {int kind; int /*<<< orphan*/  refcnt; } ;
struct ppp {int /*<<< orphan*/  dev; struct file* owner; } ;
struct inode {int dummy; } ;
struct file {struct ppp_file* private_data; } ;

/* Variables and functions */
#define  CHANNEL 129 
#define  INTERFACE 128 
 int /*<<< orphan*/  FUNC0 (struct ppp_file*) ; 
 struct ppp* FUNC1 (struct ppp_file*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ppp*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct inode *unused, struct file *file)
{
	struct ppp_file *pf = file->private_data;
	struct ppp *ppp;

	if (pf) {
		file->private_data = NULL;
		if (pf->kind == INTERFACE) {
			ppp = FUNC1(pf);
			FUNC5();
			if (file == ppp->owner)
				FUNC7(ppp->dev);
			FUNC6();
		}
		if (FUNC4(&pf->refcnt)) {
			switch (pf->kind) {
			case INTERFACE:
				FUNC3(FUNC1(pf));
				break;
			case CHANNEL:
				FUNC2(FUNC0(pf));
				break;
			}
		}
	}
	return 0;
}