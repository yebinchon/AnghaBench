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
struct dentry {int dummy; } ;
struct brcmf_pub {TYPE_2__* wiphy; TYPE_1__* bus_if; } ;
struct TYPE_4__ {int /*<<< orphan*/  debugfsdir; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 struct dentry* FUNC2 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int (*) (struct seq_file*,void*)) ; 

int FUNC3(struct brcmf_pub *drvr, const char *fn,
			    int (*read_fn)(struct seq_file *seq, void *data))
{
	struct dentry *e;

	FUNC1(!drvr->wiphy->debugfsdir, "wiphy not (yet) registered\n");
	e = FUNC2(drvr->bus_if->dev, fn,
					drvr->wiphy->debugfsdir, read_fn);
	return FUNC0(e);
}