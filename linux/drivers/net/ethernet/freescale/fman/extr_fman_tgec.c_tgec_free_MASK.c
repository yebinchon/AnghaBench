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
struct fman_mac {struct fman_mac* cfg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fman_mac*) ; 
 int /*<<< orphan*/  FUNC1 (struct fman_mac*) ; 

int FUNC2(struct fman_mac *tgec)
{
	FUNC0(tgec);

	FUNC1(tgec->cfg);
	FUNC1(tgec);

	return 0;
}