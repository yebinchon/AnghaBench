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
struct nand_sdr_timings {int dummy; } ;
struct nand_data_interface {int dummy; } ;
struct nand_chip {int dummy; } ;
struct fsmc_nand_timings {int dummy; } ;
struct fsmc_nand_data {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct nand_sdr_timings const*) ; 
 int NAND_DATA_IFACE_CHECK_ONLY ; 
 int FUNC1 (struct nand_sdr_timings const*) ; 
 int FUNC2 (struct fsmc_nand_data*,struct nand_sdr_timings const*,struct fsmc_nand_timings*) ; 
 int /*<<< orphan*/  FUNC3 (struct fsmc_nand_data*,struct fsmc_nand_timings*) ; 
 struct nand_sdr_timings* FUNC4 (struct nand_data_interface const*) ; 
 struct fsmc_nand_data* FUNC5 (struct nand_chip*) ; 

__attribute__((used)) static int FUNC6(struct nand_chip *nand, int csline,
				     const struct nand_data_interface *conf)
{
	struct fsmc_nand_data *host = FUNC5(nand);
	struct fsmc_nand_timings tims;
	const struct nand_sdr_timings *sdrt;
	int ret;

	sdrt = FUNC4(conf);
	if (FUNC0(sdrt))
		return FUNC1(sdrt);

	ret = FUNC2(host, sdrt, &tims);
	if (ret)
		return ret;

	if (csline == NAND_DATA_IFACE_CHECK_ONLY)
		return 0;

	FUNC3(host, &tims);

	return 0;
}