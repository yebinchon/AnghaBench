#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct firmware {int size; int* data; } ;
struct cas {scalar_t__ phy_id; int fw_load_addr; int fw_size; int /*<<< orphan*/  fw_data; TYPE_1__* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ PHY_NS_DP83065 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct firmware const*) ; 
 int FUNC3 (struct firmware const**,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(struct cas *cp)
{
	const struct firmware *fw;
	const char fw_name[] = "sun/cassini.bin";
	int err;

	if (PHY_NS_DP83065 != cp->phy_id)
		return;

	err = FUNC3(&fw, fw_name, &cp->pdev->dev);
	if (err) {
		FUNC1("Failed to load firmware \"%s\"\n",
		       fw_name);
		return;
	}
	if (fw->size < 2) {
		FUNC1("bogus length %zu in \"%s\"\n",
		       fw->size, fw_name);
		goto out;
	}
	cp->fw_load_addr= fw->data[1] << 8 | fw->data[0];
	cp->fw_size = fw->size - 2;
	cp->fw_data = FUNC4(cp->fw_size);
	if (!cp->fw_data)
		goto out;
	FUNC0(cp->fw_data, &fw->data[2], cp->fw_size);
out:
	FUNC2(fw);
}