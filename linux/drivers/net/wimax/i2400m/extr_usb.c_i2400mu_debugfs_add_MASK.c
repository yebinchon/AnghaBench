#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {struct dentry* debugfs_dentry; } ;
struct TYPE_4__ {TYPE_1__ wimax_dev; } ;
struct i2400mu {int /*<<< orphan*/  rx_size; int /*<<< orphan*/  rx_size_auto_shrink; struct dentry* debugfs_dentry; TYPE_2__ i2400m; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,struct dentry*) ; 
 struct dentry* FUNC1 (char*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,struct dentry*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,struct dentry*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  fw ; 
 int /*<<< orphan*/  notif ; 
 int /*<<< orphan*/  rx ; 
 int /*<<< orphan*/  tx ; 
 int /*<<< orphan*/  usb ; 

__attribute__((used)) static
void FUNC4(struct i2400mu *i2400mu)
{
	struct dentry *dentry = i2400mu->i2400m.wimax_dev.debugfs_dentry;

	dentry = FUNC1("i2400m-usb", dentry);
	i2400mu->debugfs_dentry = dentry;

	FUNC0("dl_", usb, dentry);
	FUNC0("dl_", fw, dentry);
	FUNC0("dl_", notif, dentry);
	FUNC0("dl_", rx, dentry);
	FUNC0("dl_", tx, dentry);

	/* Don't touch these if you don't know what you are doing */
	FUNC3("rx_size_auto_shrink", 0600, dentry,
			  &i2400mu->rx_size_auto_shrink);

	FUNC2("rx_size", 0600, dentry, &i2400mu->rx_size);
}