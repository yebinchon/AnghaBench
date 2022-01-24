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
typedef  int u8 ;
typedef  int u32 ;
struct kvaser_pciefd {int nr_channels; int freq; int freq_to_ticks_div; scalar_t__ reg_base; void* bus_freq; TYPE_1__* pci; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ KVASER_PCIEFD_LOOP_REG ; 
 int KVASER_PCIEFD_MAX_CAN_CHANNELS ; 
 int KVASER_PCIEFD_SRB_STAT_DMA ; 
 scalar_t__ KVASER_PCIEFD_SRB_STAT_REG ; 
 scalar_t__ KVASER_PCIEFD_SYSID_BUILD_REG ; 
 int KVASER_PCIEFD_SYSID_BUILD_VER_SHIFT ; 
 scalar_t__ KVASER_PCIEFD_SYSID_BUSFREQ_REG ; 
 scalar_t__ KVASER_PCIEFD_SYSID_CANFREQ_REG ; 
 int KVASER_PCIEFD_SYSID_MAJOR_VER_SHIFT ; 
 int KVASER_PCIEFD_SYSID_NRCHAN_SHIFT ; 
 scalar_t__ KVASER_PCIEFD_SYSID_VERSION_REG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 void* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC4 (struct kvaser_pciefd*) ; 

__attribute__((used)) static int FUNC5(struct kvaser_pciefd *pcie)
{
	u32 sysid, srb_status, build;
	u8 sysid_nr_chan;
	int ret;

	ret = FUNC4(pcie);
	if (ret)
		return ret;

	sysid = FUNC2(pcie->reg_base + KVASER_PCIEFD_SYSID_VERSION_REG);
	sysid_nr_chan = (sysid >> KVASER_PCIEFD_SYSID_NRCHAN_SHIFT) & 0xff;
	if (pcie->nr_channels != sysid_nr_chan) {
		FUNC1(&pcie->pci->dev,
			"Number of channels does not match: %u vs %u\n",
			pcie->nr_channels,
			sysid_nr_chan);
		return -ENODEV;
	}

	if (pcie->nr_channels > KVASER_PCIEFD_MAX_CAN_CHANNELS)
		pcie->nr_channels = KVASER_PCIEFD_MAX_CAN_CHANNELS;

	build = FUNC2(pcie->reg_base + KVASER_PCIEFD_SYSID_BUILD_REG);
	FUNC0(&pcie->pci->dev, "Version %u.%u.%u\n",
		(sysid >> KVASER_PCIEFD_SYSID_MAJOR_VER_SHIFT) & 0xff,
		sysid & 0xff,
		(build >> KVASER_PCIEFD_SYSID_BUILD_VER_SHIFT) & 0x7fff);

	srb_status = FUNC2(pcie->reg_base + KVASER_PCIEFD_SRB_STAT_REG);
	if (!(srb_status & KVASER_PCIEFD_SRB_STAT_DMA)) {
		FUNC1(&pcie->pci->dev,
			"Hardware without DMA is not supported\n");
		return -ENODEV;
	}

	pcie->bus_freq = FUNC2(pcie->reg_base +
				  KVASER_PCIEFD_SYSID_BUSFREQ_REG);
	pcie->freq = FUNC2(pcie->reg_base + KVASER_PCIEFD_SYSID_CANFREQ_REG);
	pcie->freq_to_ticks_div = pcie->freq / 1000000;
	if (pcie->freq_to_ticks_div == 0)
		pcie->freq_to_ticks_div = 1;

	/* Turn off all loopback functionality */
	FUNC3(0, pcie->reg_base + KVASER_PCIEFD_LOOP_REG);
	return ret;
}