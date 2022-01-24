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
struct seq_file {int /*<<< orphan*/  file; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;
struct ap_data {TYPE_1__ mac_restrictions; } ;

/* Variables and functions */
 struct ap_data* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct seq_file *m, void *v)
{
	struct ap_data *ap = FUNC0(FUNC1(m->file));
	FUNC2(&ap->mac_restrictions.lock);
}