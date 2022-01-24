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
struct flexcop_pci {int /*<<< orphan*/  irq_check_work; struct pci_dev* pdev; struct flexcop_device* fc_dev; } ;
struct flexcop_device {int /*<<< orphan*/  owner; int /*<<< orphan*/ * dev; int /*<<< orphan*/  bus_type; scalar_t__ pid_filtering; int /*<<< orphan*/  stream_control; int /*<<< orphan*/  get_mac_addr; int /*<<< orphan*/  i2c_request; int /*<<< orphan*/  write_ibi_reg; int /*<<< orphan*/  read_ibi_reg; struct flexcop_pci* bus_specific; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FC_PCI ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 scalar_t__ enable_pid_filtering ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct flexcop_device*) ; 
 int FUNC3 (struct flexcop_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct flexcop_device*) ; 
 struct flexcop_device* FUNC5 (int) ; 
 int /*<<< orphan*/  flexcop_eeprom_check_mac_addr ; 
 int /*<<< orphan*/  flexcop_i2c_request ; 
 int FUNC6 (struct flexcop_pci*) ; 
 int /*<<< orphan*/  FUNC7 (struct flexcop_pci*) ; 
 int FUNC8 (struct flexcop_pci*) ; 
 int /*<<< orphan*/  flexcop_pci_irq_check_work ; 
 int /*<<< orphan*/  flexcop_pci_read_ibi_reg ; 
 int /*<<< orphan*/  flexcop_pci_stream_control ; 
 int /*<<< orphan*/  flexcop_pci_write_ibi_reg ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int irq_chk_intv ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct pci_dev *pdev,
		const struct pci_device_id *ent)
{
	struct flexcop_device *fc;
	struct flexcop_pci *fc_pci;
	int ret = -ENOMEM;

	if ((fc = FUNC5(sizeof(struct flexcop_pci))) == NULL) {
		FUNC1("out of memory\n");
		return -ENOMEM;
	}

	/* general flexcop init */
	fc_pci = fc->bus_specific;
	fc_pci->fc_dev = fc;

	fc->read_ibi_reg = flexcop_pci_read_ibi_reg;
	fc->write_ibi_reg = flexcop_pci_write_ibi_reg;
	fc->i2c_request = flexcop_i2c_request;
	fc->get_mac_addr = flexcop_eeprom_check_mac_addr;
	fc->stream_control = flexcop_pci_stream_control;

	if (enable_pid_filtering)
		FUNC9("will use the HW PID filter.");
	else
		FUNC9("will pass the complete TS to the demuxer.");

	fc->pid_filtering = enable_pid_filtering;
	fc->bus_type = FC_PCI;
	fc->dev = &pdev->dev;
	fc->owner = THIS_MODULE;

	/* bus specific part */
	fc_pci->pdev = pdev;
	if ((ret = FUNC8(fc_pci)) != 0)
		goto err_kfree;

	/* init flexcop */
	if ((ret = FUNC3(fc)) != 0)
		goto err_pci_exit;

	/* init dma */
	if ((ret = FUNC6(fc_pci)) != 0)
		goto err_fc_exit;

	FUNC0(&fc_pci->irq_check_work, flexcop_pci_irq_check_work);

	if (irq_chk_intv > 0)
		FUNC11(&fc_pci->irq_check_work,
				FUNC10(irq_chk_intv < 100 ?
					100 :
					irq_chk_intv));
	return ret;

err_fc_exit:
	FUNC2(fc);
err_pci_exit:
	FUNC7(fc_pci);
err_kfree:
	FUNC4(fc);
	return ret;
}