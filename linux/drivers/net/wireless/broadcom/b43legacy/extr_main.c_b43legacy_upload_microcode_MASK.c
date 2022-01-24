#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
typedef  int u16 ;
struct wiphy {int /*<<< orphan*/  hw_version; int /*<<< orphan*/  fw_version; } ;
struct TYPE_13__ {int rev; int patch; TYPE_3__* pcm; TYPE_2__* ucode; } ;
struct b43legacy_wldev {TYPE_6__* dev; TYPE_4__ fw; TYPE_7__* wl; } ;
struct b43legacy_fw_header {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_16__ {TYPE_1__* hw; } ;
struct TYPE_14__ {int /*<<< orphan*/  coreid; } ;
struct TYPE_15__ {TYPE_5__ id; } ;
struct TYPE_12__ {size_t const size; scalar_t__ data; } ;
struct TYPE_11__ {size_t const size; scalar_t__ data; } ;
struct TYPE_10__ {struct wiphy* wiphy; } ;

/* Variables and functions */
 unsigned int B43legacy_IRQWAIT_MAX_RETRIES ; 
 int B43legacy_IRQ_ALL ; 
 int B43legacy_IRQ_MAC_SUSPENDED ; 
 int B43legacy_MACCTL_PSM_JMP0 ; 
 int B43legacy_MACCTL_PSM_RUN ; 
 int /*<<< orphan*/  B43legacy_MMIO_GEN_IRQ_REASON ; 
 int /*<<< orphan*/  B43legacy_MMIO_MACCTL ; 
 int /*<<< orphan*/  B43legacy_MMIO_SHM_DATA ; 
 int B43legacy_SHM_AUTOINC_W ; 
 int B43legacy_SHM_HW ; 
 int /*<<< orphan*/  B43legacy_SHM_SHARED ; 
 int /*<<< orphan*/  B43legacy_SHM_SH_UCODEDATE ; 
 int /*<<< orphan*/  B43legacy_SHM_SH_UCODEPATCH ; 
 int /*<<< orphan*/  B43legacy_SHM_SH_UCODEREV ; 
 int /*<<< orphan*/  B43legacy_SHM_SH_UCODETIME ; 
 int B43legacy_SHM_UCODE ; 
 int /*<<< orphan*/  B43legacy_SHM_WIRELESS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINTR ; 
 int ENODEV ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC1 (TYPE_7__*) ; 
 int FUNC2 (struct b43legacy_wldev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct b43legacy_wldev*,int,int) ; 
 int FUNC4 (struct b43legacy_wldev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct b43legacy_wldev*,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct b43legacy_wldev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_7__*,char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_7__*,char*,int,int,int,int,int,int,int,int) ; 
 int FUNC9 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int,char*,int,int) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 

__attribute__((used)) static int FUNC14(struct b43legacy_wldev *dev)
{
	struct wiphy *wiphy = dev->wl->hw->wiphy;
	const size_t hdr_len = sizeof(struct b43legacy_fw_header);
	const __be32 *data;
	unsigned int i;
	unsigned int len;
	u16 fwrev;
	u16 fwpatch;
	u16 fwdate;
	u16 fwtime;
	u32 tmp, macctl;
	int err = 0;

	/* Jump the microcode PSM to offset 0 */
	macctl = FUNC2(dev, B43legacy_MMIO_MACCTL);
	FUNC0(macctl & B43legacy_MACCTL_PSM_RUN);
	macctl |= B43legacy_MACCTL_PSM_JMP0;
	FUNC6(dev, B43legacy_MMIO_MACCTL, macctl);
	/* Zero out all microcode PSM registers and shared memory. */
	for (i = 0; i < 64; i++)
		FUNC5(dev, B43legacy_SHM_WIRELESS, i, 0);
	for (i = 0; i < 4096; i += 2)
		FUNC5(dev, B43legacy_SHM_SHARED, i, 0);

	/* Upload Microcode. */
	data = (__be32 *) (dev->fw.ucode->data + hdr_len);
	len = (dev->fw.ucode->size - hdr_len) / sizeof(__be32);
	FUNC3(dev,
				   B43legacy_SHM_UCODE |
				   B43legacy_SHM_AUTOINC_W,
				   0x0000);
	for (i = 0; i < len; i++) {
		FUNC6(dev, B43legacy_MMIO_SHM_DATA,
				    FUNC9(data[i]));
		FUNC13(10);
	}

	if (dev->fw.pcm) {
		/* Upload PCM data. */
		data = (__be32 *) (dev->fw.pcm->data + hdr_len);
		len = (dev->fw.pcm->size - hdr_len) / sizeof(__be32);
		FUNC3(dev, B43legacy_SHM_HW, 0x01EA);
		FUNC6(dev, B43legacy_MMIO_SHM_DATA, 0x00004000);
		/* No need for autoinc bit in SHM_HW */
		FUNC3(dev, B43legacy_SHM_HW, 0x01EB);
		for (i = 0; i < len; i++) {
			FUNC6(dev, B43legacy_MMIO_SHM_DATA,
					  FUNC9(data[i]));
			FUNC13(10);
		}
	}

	FUNC6(dev, B43legacy_MMIO_GEN_IRQ_REASON,
			  B43legacy_IRQ_ALL);

	/* Start the microcode PSM */
	macctl = FUNC2(dev, B43legacy_MMIO_MACCTL);
	macctl &= ~B43legacy_MACCTL_PSM_JMP0;
	macctl |= B43legacy_MACCTL_PSM_RUN;
	FUNC6(dev, B43legacy_MMIO_MACCTL, macctl);

	/* Wait for the microcode to load and respond */
	i = 0;
	while (1) {
		tmp = FUNC2(dev, B43legacy_MMIO_GEN_IRQ_REASON);
		if (tmp == B43legacy_IRQ_MAC_SUSPENDED)
			break;
		i++;
		if (i >= B43legacy_IRQWAIT_MAX_RETRIES) {
			FUNC7(dev->wl, "Microcode not responding\n");
			FUNC1(dev->wl);
			err = -ENODEV;
			goto error;
		}
		FUNC10(50);
		if (FUNC11(current)) {
			err = -EINTR;
			goto error;
		}
	}
	/* dummy read follows */
	FUNC2(dev, B43legacy_MMIO_GEN_IRQ_REASON);

	/* Get and check the revisions. */
	fwrev = FUNC4(dev, B43legacy_SHM_SHARED,
				     B43legacy_SHM_SH_UCODEREV);
	fwpatch = FUNC4(dev, B43legacy_SHM_SHARED,
				       B43legacy_SHM_SH_UCODEPATCH);
	fwdate = FUNC4(dev, B43legacy_SHM_SHARED,
				      B43legacy_SHM_SH_UCODEDATE);
	fwtime = FUNC4(dev, B43legacy_SHM_SHARED,
				      B43legacy_SHM_SH_UCODETIME);

	if (fwrev > 0x128) {
		FUNC7(dev->wl, "YOU ARE TRYING TO LOAD V4 FIRMWARE."
			     " Only firmware from binary drivers version 3.x"
			     " is supported. You must change your firmware"
			     " files.\n");
		FUNC1(dev->wl);
		err = -EOPNOTSUPP;
		goto error;
	}
	FUNC8(dev->wl, "Loading firmware version 0x%X, patch level %u "
		      "(20%.2i-%.2i-%.2i %.2i:%.2i:%.2i)\n", fwrev, fwpatch,
		      (fwdate >> 12) & 0xF, (fwdate >> 8) & 0xF, fwdate & 0xFF,
		      (fwtime >> 11) & 0x1F, (fwtime >> 5) & 0x3F,
		      fwtime & 0x1F);

	dev->fw.rev = fwrev;
	dev->fw.patch = fwpatch;

	FUNC12(wiphy->fw_version, sizeof(wiphy->fw_version), "%u.%u",
			dev->fw.rev, dev->fw.patch);
	wiphy->hw_version = dev->dev->id.coreid;

	return 0;

error:
	macctl = FUNC2(dev, B43legacy_MMIO_MACCTL);
	macctl &= ~B43legacy_MACCTL_PSM_RUN;
	macctl |= B43legacy_MACCTL_PSM_JMP0;
	FUNC6(dev, B43legacy_MMIO_MACCTL, macctl);

	return err;
}