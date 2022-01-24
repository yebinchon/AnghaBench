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
struct pci_device_id {int dummy; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct memstick_host {int dummy; } ;
struct jmb38x_ms {int host_cnt; int /*<<< orphan*/ ** hosts; struct pci_dev* pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DRIVER_NAME ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (struct jmb38x_ms*,int) ; 
 int FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct jmb38x_ms*) ; 
 struct jmb38x_ms* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct pci_dev*) ; 
 int FUNC10 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC11 (struct pci_dev*) ; 
 int FUNC12 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct pci_dev*,struct jmb38x_ms*) ; 
 int /*<<< orphan*/  FUNC14 (struct pci_dev*) ; 

__attribute__((used)) static int FUNC15(struct pci_dev *pdev,
			   const struct pci_device_id *dev_id)
{
	struct jmb38x_ms *jm;
	int pci_dev_busy = 0;
	int rc, cnt;

	rc = FUNC1(&pdev->dev, FUNC0(32));
	if (rc)
		return rc;

	rc = FUNC10(pdev);
	if (rc)
		return rc;

	FUNC14(pdev);

	rc = FUNC12(pdev, DRIVER_NAME);
	if (rc) {
		pci_dev_busy = 1;
		goto err_out;
	}

	FUNC5(pdev, 1);

	cnt = FUNC3(pdev);
	if (!cnt) {
		rc = -ENODEV;
		pci_dev_busy = 1;
		goto err_out_int;
	}

	jm = FUNC7(sizeof(struct jmb38x_ms)
		     + cnt * sizeof(struct memstick_host *), GFP_KERNEL);
	if (!jm) {
		rc = -ENOMEM;
		goto err_out_int;
	}

	jm->pdev = pdev;
	jm->host_cnt = cnt;
	FUNC13(pdev, jm);

	for (cnt = 0; cnt < jm->host_cnt; ++cnt) {
		jm->hosts[cnt] = FUNC2(jm, cnt);
		if (!jm->hosts[cnt])
			break;

		rc = FUNC8(jm->hosts[cnt]);

		if (rc) {
			FUNC4(jm->hosts[cnt]);
			jm->hosts[cnt] = NULL;
			break;
		}
	}

	if (cnt)
		return 0;

	rc = -ENODEV;

	FUNC13(pdev, NULL);
	FUNC6(jm);
err_out_int:
	FUNC11(pdev);
err_out:
	if (!pci_dev_busy)
		FUNC9(pdev);
	return rc;
}