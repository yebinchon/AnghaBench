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
typedef  int u32 ;
struct sh_mmcif_host {int dummy; } ;
struct mmc_request {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
#define  MMC_READ_MULTIPLE_BLOCK 132 
#define  MMC_READ_SINGLE_BLOCK 131 
#define  MMC_SEND_EXT_CSD 130 
#define  MMC_WRITE_BLOCK 129 
#define  MMC_WRITE_MULTIPLE_BLOCK 128 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int) ; 
 struct device* FUNC1 (struct sh_mmcif_host*) ; 
 int /*<<< orphan*/  FUNC2 (struct sh_mmcif_host*,struct mmc_request*) ; 
 int /*<<< orphan*/  FUNC3 (struct sh_mmcif_host*,struct mmc_request*) ; 
 int /*<<< orphan*/  FUNC4 (struct sh_mmcif_host*,struct mmc_request*) ; 
 int /*<<< orphan*/  FUNC5 (struct sh_mmcif_host*,struct mmc_request*) ; 

__attribute__((used)) static int FUNC6(struct sh_mmcif_host *host,
			       struct mmc_request *mrq, u32 opc)
{
	struct device *dev = FUNC1(host);

	switch (opc) {
	case MMC_READ_MULTIPLE_BLOCK:
		FUNC2(host, mrq);
		return 0;
	case MMC_WRITE_MULTIPLE_BLOCK:
		FUNC3(host, mrq);
		return 0;
	case MMC_WRITE_BLOCK:
		FUNC5(host, mrq);
		return 0;
	case MMC_READ_SINGLE_BLOCK:
	case MMC_SEND_EXT_CSD:
		FUNC4(host, mrq);
		return 0;
	default:
		FUNC0(dev, "Unsupported CMD%d\n", opc);
		return -EINVAL;
	}
}