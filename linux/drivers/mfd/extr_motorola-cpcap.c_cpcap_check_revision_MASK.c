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
typedef  scalar_t__ u16 ;
struct cpcap_ddata {TYPE_1__* spi; int /*<<< orphan*/  regmap; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ CPCAP_REVISION_2_1 ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ CPCAP_VENDOR_ST ; 
 int ENODEV ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,...) ; 

__attribute__((used)) static int FUNC5(struct cpcap_ddata *cpcap)
{
	u16 vendor, rev;
	int ret;

	ret = FUNC3(&cpcap->spi->dev, cpcap->regmap, &vendor);
	if (ret)
		return ret;

	ret = FUNC2(&cpcap->spi->dev, cpcap->regmap, &rev);
	if (ret)
		return ret;

	FUNC4(&cpcap->spi->dev, "CPCAP vendor: %s rev: %i.%i (%x)\n",
		 vendor == CPCAP_VENDOR_ST ? "ST" : "TI",
		 FUNC0(rev), FUNC1(rev),
		 rev);

	if (rev < CPCAP_REVISION_2_1) {
		FUNC4(&cpcap->spi->dev,
			 "Please add old CPCAP revision support as needed\n");
		return -ENODEV;
	}

	return 0;
}