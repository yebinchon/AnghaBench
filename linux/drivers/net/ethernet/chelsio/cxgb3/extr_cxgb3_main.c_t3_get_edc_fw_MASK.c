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
typedef  int u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct firmware {int size; scalar_t__ data; } ;
struct cphy {int /*<<< orphan*/ * phy_cache; struct adapter* adapter; } ;
struct adapter {TYPE_1__* pdev; } ;
typedef  int /*<<< orphan*/  csum ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct adapter*,char*,int,...) ; 
 int EINVAL ; 
 int FUNC1 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char const*) ; 
 char* FUNC3 (int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC5 (struct firmware const*) ; 
 int FUNC6 (struct firmware const**,char const*,int /*<<< orphan*/ *) ; 

int FUNC7(struct cphy *phy, int edc_idx, int size)
{
	struct adapter *adapter = phy->adapter;
	const struct firmware *fw;
	const char *fw_name;
	u32 csum;
	const __be32 *p;
	u16 *cache = phy->phy_cache;
	int i, ret = -EINVAL;

	fw_name = FUNC3(edc_idx);
	if (fw_name)
		ret = FUNC6(&fw, fw_name, &adapter->pdev->dev);
	if (ret < 0) {
		FUNC2(&adapter->pdev->dev,
			"could not upgrade firmware: unable to load %s\n",
			fw_name);
		return ret;
	}

	/* check size, take checksum in account */
	if (fw->size > size + 4) {
		FUNC0(adapter, "firmware image too large %u, expected %d\n",
		       (unsigned int)fw->size, size + 4);
		ret = -EINVAL;
	}

	/* compute checksum */
	p = (const __be32 *)fw->data;
	for (csum = 0, i = 0; i < fw->size / sizeof(csum); i++)
		csum += FUNC4(p[i]);

	if (csum != 0xffffffff) {
		FUNC0(adapter, "corrupted firmware image, checksum %u\n",
		       csum);
		ret = -EINVAL;
	}

	for (i = 0; i < size / 4 ; i++) {
		*cache++ = (FUNC1(p[i]) & 0xffff0000) >> 16;
		*cache++ = FUNC1(p[i]) & 0xffff;
	}

	FUNC5(fw);

	return ret;
}