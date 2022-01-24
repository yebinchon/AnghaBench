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
struct dim {int dummy; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,struct dentry*,struct dim*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  debugfs_dim_fops ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,int) ; 

__attribute__((used)) static void FUNC2(struct dim *dim, int ring_idx,
				  struct dentry *dd)
{
	static char qname[16];

	FUNC1(qname, 10, "%d", ring_idx);
	FUNC0(qname, 0600, dd, dim, &debugfs_dim_fops);
}