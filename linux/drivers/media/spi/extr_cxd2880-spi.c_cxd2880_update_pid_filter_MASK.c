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
typedef  int /*<<< orphan*/  tmpcfg ;
struct cxd2880_pid_filter_config {int is_negative; TYPE_1__* pid_config; } ;
struct cxd2880_dvb_spi {int /*<<< orphan*/  spi_mutex; int /*<<< orphan*/  spi; } ;
struct TYPE_2__ {int is_enable; int pid; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ ,struct cxd2880_pid_filter_config*) ; 
 int /*<<< orphan*/  FUNC1 (struct cxd2880_pid_filter_config*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static int FUNC5(struct cxd2880_dvb_spi *dvb_spi,
				     struct cxd2880_pid_filter_config *cfg,
				     bool is_all_pid_filter)
{
	int ret;

	if (!dvb_spi || !cfg) {
		FUNC4("invalid arg.\n");
		return -EINVAL;
	}

	FUNC2(&dvb_spi->spi_mutex);
	if (is_all_pid_filter) {
		struct cxd2880_pid_filter_config tmpcfg;

		FUNC1(&tmpcfg, 0, sizeof(tmpcfg));
		tmpcfg.is_negative = 1;
		tmpcfg.pid_config[0].is_enable = 1;
		tmpcfg.pid_config[0].pid = 0x1fff;

		ret = FUNC0(dvb_spi->spi, &tmpcfg);
	} else {
		ret = FUNC0(dvb_spi->spi, cfg);
	}
	FUNC3(&dvb_spi->spi_mutex);

	if (ret)
		FUNC4("set_pid_filter failed\n");

	return ret;
}