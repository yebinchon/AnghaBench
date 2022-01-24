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
struct ionic {int /*<<< orphan*/  dl_port; } ;
struct devlink {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct devlink*) ; 
 struct devlink* FUNC2 (struct ionic*) ; 

void FUNC3(struct ionic *ionic)
{
	struct devlink *dl = FUNC2(ionic);

	FUNC0(&ionic->dl_port);
	FUNC1(dl);
}