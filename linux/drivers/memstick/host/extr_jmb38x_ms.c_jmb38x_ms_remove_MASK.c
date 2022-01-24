#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct pci_dev {int dummy; } ;
struct jmb38x_ms_host {int /*<<< orphan*/  lock; TYPE_1__* req; scalar_t__ addr; int /*<<< orphan*/  notify; } ;
struct jmb38x_ms {int host_cnt; TYPE_3__** hosts; TYPE_2__* pdev; } ;
struct TYPE_9__ {int /*<<< orphan*/  request; } ;
struct TYPE_8__ {int /*<<< orphan*/  dev; } ;
struct TYPE_7__ {int /*<<< orphan*/  error; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETIME ; 
 scalar_t__ INT_SIGNAL_ENABLE ; 
 scalar_t__ INT_STATUS_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  jmb38x_ms_dummy_submit ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct jmb38x_ms*) ; 
 struct jmb38x_ms_host* FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*) ; 
 struct jmb38x_ms* FUNC8 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct pci_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC15(struct pci_dev *dev)
{
	struct jmb38x_ms *jm = FUNC8(dev);
	struct jmb38x_ms_host *host;
	int cnt;
	unsigned long flags;

	for (cnt = 0; cnt < jm->host_cnt; ++cnt) {
		if (!jm->hosts[cnt])
			break;

		host = FUNC5(jm->hosts[cnt]);

		jm->hosts[cnt]->request = jmb38x_ms_dummy_submit;
		FUNC13(&host->notify);
		FUNC14(0, host->addr + INT_SIGNAL_ENABLE);
		FUNC14(0, host->addr + INT_STATUS_ENABLE);
		FUNC0(&jm->pdev->dev, "interrupts off\n");
		FUNC11(&host->lock, flags);
		if (host->req) {
			host->req->error = -ETIME;
			FUNC1(jm->hosts[cnt], 1);
		}
		FUNC12(&host->lock, flags);

		FUNC6(jm->hosts[cnt]);
		FUNC0(&jm->pdev->dev, "host removed\n");

		FUNC2(jm->hosts[cnt]);
	}

	FUNC3(dev, 0);

	FUNC10(dev, NULL);
	FUNC9(dev);
	FUNC7(dev);
	FUNC4(jm);
}