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

/* Variables and functions */
 int /*<<< orphan*/  fastrpc_cb_driver ; 
 int /*<<< orphan*/  fastrpc_driver ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(void)
{
	int ret;

	ret = FUNC0(&fastrpc_cb_driver);
	if (ret < 0) {
		FUNC2("fastrpc: failed to register cb driver\n");
		return ret;
	}

	ret = FUNC3(&fastrpc_driver);
	if (ret < 0) {
		FUNC2("fastrpc: failed to register rpmsg driver\n");
		FUNC1(&fastrpc_cb_driver);
		return ret;
	}

	return 0;
}