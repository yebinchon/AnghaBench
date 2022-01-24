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
typedef  int /*<<< orphan*/  u32 ;
struct i2400m_bcf_hdr {int /*<<< orphan*/  size; } ;
struct i2400m {int bus_bm_retries; int boot_mode; int /*<<< orphan*/  fw_name; } ;
struct device {int dummy; } ;
typedef  enum i2400m_bri { ____Placeholder_i2400m_bri } i2400m_bri ;

/* Variables and functions */
 int EBADF ; 
 int ERESTARTSYS ; 
 int I2400M_BRI_MAC_REINIT ; 
 int I2400M_BRI_SOFT ; 
 int /*<<< orphan*/  FUNC0 (int,struct device*,char*,struct i2400m*,struct i2400m_bcf_hdr const*,size_t,int) ; 
 int /*<<< orphan*/  FUNC1 (int,struct device*,char*,struct i2400m*,struct i2400m_bcf_hdr const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int,struct device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,...) ; 
 struct i2400m_bcf_hdr* FUNC4 (struct i2400m*) ; 
 int FUNC5 (struct i2400m*,int) ; 
 struct device* FUNC6 (struct i2400m*) ; 
 int FUNC7 (struct i2400m*,struct i2400m_bcf_hdr const*,size_t) ; 
 int FUNC8 (struct i2400m*,struct i2400m_bcf_hdr const*,struct i2400m_bcf_hdr const*,int) ; 
 int FUNC9 (struct i2400m*,struct i2400m_bcf_hdr const*) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 () ; 

__attribute__((used)) static
int FUNC12(struct i2400m *i2400m, const struct i2400m_bcf_hdr *bcf,
		     size_t fw_size, enum i2400m_bri flags)
{
	int ret = 0;
	struct device *dev = FUNC6(i2400m);
	int count = i2400m->bus_bm_retries;
	const struct i2400m_bcf_hdr *bcf_hdr;
	size_t bcf_size;

	FUNC1(5, dev, "(i2400m %p bcf %p fw size %zu)\n",
		  i2400m, bcf, fw_size);
	i2400m->boot_mode = 1;
	FUNC11();		/* Make sure other readers see it */
hw_reboot:
	if (count-- == 0) {
		ret = -ERESTARTSYS;
		FUNC3(dev, "device rebooted too many times, aborting\n");
		goto error_too_many_reboots;
	}
	if (flags & I2400M_BRI_MAC_REINIT) {
		ret = FUNC5(i2400m, flags);
		if (ret < 0) {
			FUNC3(dev, "bootrom init failed: %d\n", ret);
			goto error_bootrom_init;
		}
	}
	flags |= I2400M_BRI_MAC_REINIT;

	/*
	 * Initialize the download, push the bytes to the device and
	 * then jump to the new firmware. Note @ret is passed with the
	 * offset of the jump instruction to _dnload_finalize()
	 *
	 * Note we need to use the BCF header in the firmware image
	 * that matches the barker that the device sent when it
	 * rebooted, so it has to be passed along.
	 */
	ret = -EBADF;
	bcf_hdr = FUNC4(i2400m);
	if (bcf_hdr == NULL)
		goto error_bcf_hdr_find;

	ret = FUNC9(i2400m, bcf_hdr);
	if (ret == -ERESTARTSYS)
		goto error_dev_rebooted;
	if (ret < 0)
		goto error_dnload_init;

	/*
	 * bcf_size refers to one header size plus the fw sections size
	 * indicated by the header,ie. if there are other extended headers
	 * at the tail, they are not counted
	 */
	bcf_size = sizeof(u32) * FUNC10(bcf_hdr->size);
	ret = FUNC7(i2400m, bcf, bcf_size);
	if (ret == -ERESTARTSYS)
		goto error_dev_rebooted;
	if (ret < 0) {
		FUNC3(dev, "fw %s: download failed: %d\n",
			i2400m->fw_name, ret);
		goto error_dnload_bcf;
	}

	ret = FUNC8(i2400m, bcf_hdr, bcf, ret);
	if (ret == -ERESTARTSYS)
		goto error_dev_rebooted;
	if (ret < 0) {
		FUNC3(dev, "fw %s: "
			"download finalization failed: %d\n",
			i2400m->fw_name, ret);
		goto error_dnload_finalize;
	}

	FUNC2(2, dev, "fw %s successfully uploaded\n",
		 i2400m->fw_name);
	i2400m->boot_mode = 0;
	FUNC11();		/* Make sure i2400m_msg_to_dev() sees boot_mode */
error_dnload_finalize:
error_dnload_bcf:
error_dnload_init:
error_bcf_hdr_find:
error_bootrom_init:
error_too_many_reboots:
	FUNC0(5, dev, "(i2400m %p bcf %p size %zu) = %d\n",
		i2400m, bcf, fw_size, ret);
	return ret;

error_dev_rebooted:
	FUNC3(dev, "device rebooted, %d tries left\n", count);
	/* we got the notification already, no need to wait for it again */
	flags |= I2400M_BRI_SOFT;
	goto hw_reboot;
}