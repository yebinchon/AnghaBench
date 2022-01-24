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
struct bna_ioceth {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IOCETH_E_IOC_DISABLED ; 
 int /*<<< orphan*/  FUNC0 (struct bna_ioceth*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC1(void *arg)
{
	struct bna_ioceth *ioceth = (struct bna_ioceth *)arg;

	FUNC0(ioceth, IOCETH_E_IOC_DISABLED);
}