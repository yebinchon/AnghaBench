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
struct adapter {int /*<<< orphan*/  debugfs_root; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,int,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  mem_debugfs_fops ; 

__attribute__((used)) static void FUNC1(struct adapter *adap, const char *name,
			    unsigned int idx, unsigned int size_mb)
{
	FUNC0(name, 0400, adap->debugfs_root,
				 (void *)adap + idx, &mem_debugfs_fops,
				 size_mb << 20);
}