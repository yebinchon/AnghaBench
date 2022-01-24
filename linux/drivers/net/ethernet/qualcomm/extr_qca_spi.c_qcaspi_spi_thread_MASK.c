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
typedef  int u16 ;
struct TYPE_4__ {int /*<<< orphan*/  write_buf_err; int /*<<< orphan*/  read_buf_err; int /*<<< orphan*/  device_reset; } ;
struct TYPE_3__ {size_t head; int /*<<< orphan*/ ** skb; } ;
struct qcaspi {scalar_t__ intr_req; scalar_t__ intr_svc; scalar_t__ sync; int /*<<< orphan*/  net_dev; TYPE_2__ stats; TYPE_1__ txr; } ;

/* Variables and functions */
 int /*<<< orphan*/  QCASPI_EVENT_CPUON ; 
 int /*<<< orphan*/  QCASPI_EVENT_UPDATE ; 
 int /*<<< orphan*/  QCASPI_QCA7K_REBOOT_TIME_MS ; 
 scalar_t__ QCASPI_SYNC_READY ; 
 void* QCASPI_SYNC_UNKNOWN ; 
 int SPI_INT_CPU_ON ; 
 int SPI_INT_PKT_AVLBL ; 
 int SPI_INT_RDBUF_ERR ; 
 int SPI_INT_WRBUF_ERR ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (struct qcaspi*,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct qcaspi*) ; 
 int /*<<< orphan*/  FUNC10 (struct qcaspi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct qcaspi*) ; 
 int /*<<< orphan*/  FUNC12 (struct qcaspi*) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct qcaspi*,int*) ; 

__attribute__((used)) static int
FUNC16(void *data)
{
	struct qcaspi *qca = data;
	u16 intr_cause = 0;

	FUNC4(qca->net_dev, "SPI thread created\n");
	while (!FUNC1()) {
		FUNC14(TASK_INTERRUPTIBLE);
		if ((qca->intr_req == qca->intr_svc) &&
		    (qca->txr.skb[qca->txr.head] == NULL) &&
		    (qca->sync == QCASPI_SYNC_READY))
			FUNC13();

		FUNC14(TASK_RUNNING);

		FUNC3(qca->net_dev, "have work to do. int: %d, tx_skb: %p\n",
			   qca->intr_req - qca->intr_svc,
			   qca->txr.skb[qca->txr.head]);

		FUNC10(qca, QCASPI_EVENT_UPDATE);

		if (qca->sync != QCASPI_SYNC_READY) {
			FUNC3(qca->net_dev, "sync: not ready %u, turn off carrier and flush\n",
				   (unsigned int)qca->sync);
			FUNC7(qca->net_dev);
			FUNC5(qca->net_dev);
			FUNC9(qca);
			FUNC2(QCASPI_QCA7K_REBOOT_TIME_MS);
		}

		if (qca->intr_svc != qca->intr_req) {
			qca->intr_svc = qca->intr_req;
			FUNC15(qca, &intr_cause);

			if (intr_cause & SPI_INT_CPU_ON) {
				FUNC10(qca, QCASPI_EVENT_CPUON);

				/* not synced. */
				if (qca->sync != QCASPI_SYNC_READY)
					continue;

				qca->stats.device_reset++;
				FUNC8(qca->net_dev);
				FUNC6(qca->net_dev);
			}

			if (intr_cause & SPI_INT_RDBUF_ERR) {
				/* restart sync */
				FUNC3(qca->net_dev, "===> rdbuf error!\n");
				qca->stats.read_buf_err++;
				qca->sync = QCASPI_SYNC_UNKNOWN;
				continue;
			}

			if (intr_cause & SPI_INT_WRBUF_ERR) {
				/* restart sync */
				FUNC3(qca->net_dev, "===> wrbuf error!\n");
				qca->stats.write_buf_err++;
				qca->sync = QCASPI_SYNC_UNKNOWN;
				continue;
			}

			/* can only handle other interrupts
			 * if sync has occurred
			 */
			if (qca->sync == QCASPI_SYNC_READY) {
				if (intr_cause & SPI_INT_PKT_AVLBL)
					FUNC11(qca);
			}

			FUNC0(qca, intr_cause);
		}

		if (qca->sync == QCASPI_SYNC_READY)
			FUNC12(qca);
	}
	FUNC14(TASK_RUNNING);
	FUNC4(qca->net_dev, "SPI thread exit\n");

	return 0;
}