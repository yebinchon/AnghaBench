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
struct dvb_demux_feed {int pid; struct dvb_demux* demux; } ;
struct dvb_demux {struct cxd2880_dvb_spi* priv; } ;
struct cxd2880_pid_filter_config {TYPE_1__* pid_config; } ;
struct cxd2880_dvb_spi {scalar_t__ all_pid_feed_count; int /*<<< orphan*/  feed_count; int /*<<< orphan*/ * ts_buf; int /*<<< orphan*/  cxd2880_ts_read_thread; struct cxd2880_pid_filter_config filter_config; } ;
struct TYPE_2__ {scalar_t__ pid; scalar_t__ is_enable; } ;

/* Variables and functions */
 int CXD2880_MAX_FILTER_SIZE ; 
 int EINVAL ; 
 int FUNC0 (struct cxd2880_dvb_spi*,struct cxd2880_pid_filter_config*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 

__attribute__((used)) static int FUNC5(struct dvb_demux_feed *feed)
{
	int i = 0;
	int ret;
	struct dvb_demux *demux = NULL;
	struct cxd2880_dvb_spi *dvb_spi = NULL;

	if (!feed) {
		FUNC4("invalid arg\n");
		return -EINVAL;
	}

	demux = feed->demux;
	if (!demux) {
		FUNC4("feed->demux is NULL\n");
		return -EINVAL;
	}
	dvb_spi = demux->priv;

	if (!dvb_spi->feed_count) {
		FUNC4("no feed is started\n");
		return -EINVAL;
	}

	if (feed->pid == 0x2000) {
		/*
		 * Special PID case.
		 * Number of 0x2000 feed request was stored
		 * in dvb_spi->all_pid_feed_count.
		 */
		if (dvb_spi->all_pid_feed_count <= 0) {
			FUNC4("PID %d not found.\n", feed->pid);
			return -EINVAL;
		}
		dvb_spi->all_pid_feed_count--;
	} else {
		struct cxd2880_pid_filter_config cfgtmp;

		cfgtmp = dvb_spi->filter_config;

		for (i = 0; i < CXD2880_MAX_FILTER_SIZE; i++) {
			if (feed->pid == cfgtmp.pid_config[i].pid &&
			    cfgtmp.pid_config[i].is_enable != 0) {
				cfgtmp.pid_config[i].is_enable = 0;
				cfgtmp.pid_config[i].pid = 0;
				FUNC3("removed PID %d from #%d\n",
					 feed->pid, i);
				break;
			}
		}
		dvb_spi->filter_config = cfgtmp;

		if (i == CXD2880_MAX_FILTER_SIZE) {
			FUNC4("PID %d not found\n", feed->pid);
			return -EINVAL;
		}
	}

	ret = FUNC0(dvb_spi,
					&dvb_spi->filter_config,
					dvb_spi->all_pid_feed_count > 0);
	dvb_spi->feed_count--;

	if (dvb_spi->feed_count == 0) {
		int ret_stop = 0;

		ret_stop = FUNC2(dvb_spi->cxd2880_ts_read_thread);
		if (ret_stop) {
			FUNC4("'kthread_stop failed. (%d)\n", ret_stop);
			ret = ret_stop;
		}
		FUNC1(dvb_spi->ts_buf);
		dvb_spi->ts_buf = NULL;
	}

	FUNC3("stop feed ok.(count %d)\n", dvb_spi->feed_count);

	return ret;
}