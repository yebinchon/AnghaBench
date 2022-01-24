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
struct cxd2880_ts_buf_info {int pkt_num; } ;
struct cxd2880_dvb_spi {int /*<<< orphan*/  ts_buf; int /*<<< orphan*/  demux; int /*<<< orphan*/  spi; } ;
typedef  int /*<<< orphan*/  ktime_t ;

/* Variables and functions */
 int EINVAL ; 
 int MAX_TRANS_PKT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct cxd2880_ts_buf_info*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int,int) ; 

__attribute__((used)) static int FUNC10(void *arg)
{
	struct cxd2880_dvb_spi *dvb_spi = NULL;
	struct cxd2880_ts_buf_info info;
	ktime_t start;
	u32 i;
	int ret;

	dvb_spi = arg;
	if (!dvb_spi) {
		FUNC8("invalid arg\n");
		return -EINVAL;
	}

	ret = FUNC0(dvb_spi->spi);
	if (ret) {
		FUNC8("set_clear_ts_buffer failed\n");
		return ret;
	}

	start = FUNC5();
	while (!FUNC4()) {
		ret = FUNC2(dvb_spi->spi,
						      &info);
		if (ret) {
			FUNC8("spi_read_ts_buffer_info error\n");
			return ret;
		}

		if (info.pkt_num > MAX_TRANS_PKT) {
			for (i = 0; i < info.pkt_num / MAX_TRANS_PKT; i++) {
				FUNC1(dvb_spi->spi,
						    dvb_spi->ts_buf,
						    MAX_TRANS_PKT);
				FUNC3(&dvb_spi->demux,
						 dvb_spi->ts_buf,
						 MAX_TRANS_PKT * 188);
			}
			start = FUNC5();
		} else if ((info.pkt_num > 0) &&
			   (FUNC7(FUNC6(FUNC5(), start)) >= 500)) {
			FUNC1(dvb_spi->spi,
					    dvb_spi->ts_buf,
					    info.pkt_num);
			FUNC3(&dvb_spi->demux,
					 dvb_spi->ts_buf,
					 info.pkt_num * 188);
			start = FUNC5();
		} else {
			FUNC9(10000, 11000);
		}
	}

	return 0;
}