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
struct xlgmac_pdata {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct xlgmac_pdata*) ; 
 int FUNC1 (struct xlgmac_pdata*) ; 
 int /*<<< orphan*/  FUNC2 (struct xlgmac_pdata*) ; 

__attribute__((used)) static int FUNC3(struct xlgmac_pdata *pdata)
{
	int ret;

	ret = FUNC0(pdata);
	if (ret)
		goto err_alloc;

	ret = FUNC1(pdata);
	if (ret)
		goto err_alloc;

	return 0;

err_alloc:
	FUNC2(pdata);

	return ret;
}