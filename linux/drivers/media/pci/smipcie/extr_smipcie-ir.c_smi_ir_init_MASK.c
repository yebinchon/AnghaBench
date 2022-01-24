#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct smi_rc {struct smi_dev* dev; struct rc_dev* rc_dev; int /*<<< orphan*/  device_name; int /*<<< orphan*/  input_phys; } ;
struct smi_dev {TYPE_3__* info; TYPE_4__* pci_dev; struct smi_rc ir; } ;
struct TYPE_6__ {int /*<<< orphan*/ * parent; } ;
struct TYPE_5__ {int version; int /*<<< orphan*/  product; int /*<<< orphan*/  vendor; int /*<<< orphan*/  bustype; } ;
struct rc_dev {char* driver_name; int /*<<< orphan*/  rx_resolution; int /*<<< orphan*/  timeout; int /*<<< orphan*/  map_name; TYPE_2__ dev; TYPE_1__ input_id; int /*<<< orphan*/  device_name; int /*<<< orphan*/  input_phys; int /*<<< orphan*/  allowed_protocols; } ;
struct TYPE_8__ {int /*<<< orphan*/  dev; int /*<<< orphan*/  subsystem_device; int /*<<< orphan*/  subsystem_vendor; } ;
struct TYPE_7__ {char* name; int /*<<< orphan*/  rc_map; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_PCI ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  RC_DRIVER_IR_RAW ; 
 int /*<<< orphan*/  RC_PROTO_BIT_ALL_IR_DECODER ; 
 int /*<<< orphan*/  SMI_SAMPLE_PERIOD ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (TYPE_4__*) ; 
 struct rc_dev* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct rc_dev*) ; 
 int FUNC5 (struct rc_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct smi_rc*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,char*,char*) ; 

int FUNC8(struct smi_dev *dev)
{
	int ret;
	struct rc_dev *rc_dev;
	struct smi_rc *ir = &dev->ir;

	rc_dev = FUNC3(RC_DRIVER_IR_RAW);
	if (!rc_dev)
		return -ENOMEM;

	/* init input device */
	FUNC7(ir->device_name, sizeof(ir->device_name), "IR (%s)",
		 dev->info->name);
	FUNC7(ir->input_phys, sizeof(ir->input_phys), "pci-%s/ir0",
		 FUNC2(dev->pci_dev));

	rc_dev->allowed_protocols = RC_PROTO_BIT_ALL_IR_DECODER;
	rc_dev->driver_name = "SMI_PCIe";
	rc_dev->input_phys = ir->input_phys;
	rc_dev->device_name = ir->device_name;
	rc_dev->input_id.bustype = BUS_PCI;
	rc_dev->input_id.version = 1;
	rc_dev->input_id.vendor = dev->pci_dev->subsystem_vendor;
	rc_dev->input_id.product = dev->pci_dev->subsystem_device;
	rc_dev->dev.parent = &dev->pci_dev->dev;

	rc_dev->map_name = dev->info->rc_map;
	rc_dev->timeout = FUNC0(100);
	rc_dev->rx_resolution = FUNC1(SMI_SAMPLE_PERIOD);

	ir->rc_dev = rc_dev;
	ir->dev = dev;

	FUNC6(ir);

	ret = FUNC5(rc_dev);
	if (ret)
		goto ir_err;

	return 0;
ir_err:
	FUNC4(rc_dev);
	return ret;
}