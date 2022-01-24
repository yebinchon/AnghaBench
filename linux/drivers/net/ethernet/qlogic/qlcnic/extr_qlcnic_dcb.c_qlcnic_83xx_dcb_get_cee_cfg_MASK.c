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
struct qlcnic_dcb {int /*<<< orphan*/  adapter; scalar_t__ param; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct qlcnic_dcb*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct qlcnic_dcb *dcb)
{
	int err;

	err = FUNC1(dcb, (char *)dcb->param, 0);
	if (err)
		return err;

	FUNC0(dcb->adapter);

	return err;
}