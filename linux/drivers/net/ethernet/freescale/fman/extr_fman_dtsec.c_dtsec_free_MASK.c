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
struct fman_mac {struct fman_mac* dtsec_drv_param; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fman_mac*) ; 
 int /*<<< orphan*/  FUNC1 (struct fman_mac*) ; 

int FUNC2(struct fman_mac *dtsec)
{
	FUNC0(dtsec);

	FUNC1(dtsec->dtsec_drv_param);
	dtsec->dtsec_drv_param = NULL;
	FUNC1(dtsec);

	return 0;
}