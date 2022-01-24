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
struct firmware {int /*<<< orphan*/  size; int /*<<< orphan*/  data; } ;
struct TYPE_4__ {int /*<<< orphan*/  nr; TYPE_1__* pci; } ;
struct bttv {TYPE_2__ c; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct bttv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct firmware const*) ; 
 int FUNC4 (struct firmware const**,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct bttv *btv)
{
	const struct firmware *fw_entry;
	int rc;

	rc = FUNC4(&fw_entry, "hcwamc.rbf", &btv->c.pci->dev);
	if (rc != 0) {
		FUNC1("%d: no altera firmware [via hotplug]\n", btv->c.nr);
		return rc;
	}
	rc = FUNC2(btv, fw_entry->data, fw_entry->size);
	FUNC0("%d: altera firmware upload %s\n",
		btv->c.nr, (rc < 0) ? "failed" : "ok");
	FUNC3(fw_entry);
	return rc;
}