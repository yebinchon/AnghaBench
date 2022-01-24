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
struct mtd_partition {char* name; unsigned int offset; unsigned int size; } ;
struct mtd_part_parser_data {int dummy; } ;
struct mtd_info {unsigned int size; int /*<<< orphan*/  erasesize; } ;
struct bcm_tag {int /*<<< orphan*/  total_length; int /*<<< orphan*/  kernel_length; int /*<<< orphan*/  kernel_address; int /*<<< orphan*/  flash_image_start; } ;

/* Variables and functions */
 unsigned int BCM963XX_EXTENDED_SIZE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct mtd_info*,char*,int /*<<< orphan*/ ,struct bcm_tag*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int,unsigned int*) ; 
 struct mtd_partition* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,unsigned int,...) ; 
 unsigned int FUNC6 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct bcm_tag*) ; 
 struct bcm_tag* FUNC8 (int) ; 

__attribute__((used)) static int FUNC9(struct mtd_info *master,
					const struct mtd_partition **pparts,
					struct mtd_part_parser_data *data)
{
	/* CFE, NVRAM and global Linux are always present */
	int nrparts = 0, curpart = 0;
	struct bcm_tag *buf = NULL;
	struct mtd_partition *parts;
	int ret;
	unsigned int rootfsaddr, kerneladdr, spareaddr, offset;
	unsigned int rootfslen, kernellen, sparelen, totallen;
	int i;
	bool rootfs_first = false;

	buf = FUNC8(sizeof(struct bcm_tag));
	if (!buf)
		return -ENOMEM;

	/* Get the tag */
	ret = FUNC1(master, "rootfs", 0, buf);
	if (!ret) {
		FUNC0(buf->flash_image_start);
		if (FUNC2(buf->flash_image_start, 10, &rootfsaddr) ||
				rootfsaddr < BCM963XX_EXTENDED_SIZE) {
			FUNC4("invalid rootfs address: %*ph\n",
				(int)sizeof(buf->flash_image_start),
				buf->flash_image_start);
			goto out;
		}

		FUNC0(buf->kernel_address);
		if (FUNC2(buf->kernel_address, 10, &kerneladdr) ||
				kerneladdr < BCM963XX_EXTENDED_SIZE) {
			FUNC4("invalid kernel address: %*ph\n",
				(int)sizeof(buf->kernel_address),
				buf->kernel_address);
			goto out;
		}

		FUNC0(buf->kernel_length);
		if (FUNC2(buf->kernel_length, 10, &kernellen)) {
			FUNC4("invalid kernel length: %*ph\n",
				(int)sizeof(buf->kernel_length),
				buf->kernel_length);
			goto out;
		}

		FUNC0(buf->total_length);
		if (FUNC2(buf->total_length, 10, &totallen)) {
			FUNC4("invalid total length: %*ph\n",
				(int)sizeof(buf->total_length),
				buf->total_length);
			goto out;
		}

		/*
		 * Addresses are flash absolute, so convert to partition
		 * relative addresses. Assume either kernel or rootfs will
		 * directly follow the image tag.
		 */
		if (rootfsaddr < kerneladdr)
			offset = rootfsaddr - sizeof(struct bcm_tag);
		else
			offset = kerneladdr - sizeof(struct bcm_tag);

		kerneladdr = kerneladdr - offset;
		rootfsaddr = rootfsaddr - offset;
		spareaddr = FUNC6(totallen, master->erasesize);

		if (rootfsaddr < kerneladdr) {
			/* default Broadcom layout */
			rootfslen = kerneladdr - rootfsaddr;
			rootfs_first = true;
		} else {
			/* OpenWrt layout */
			rootfsaddr = kerneladdr + kernellen;
			rootfslen = spareaddr - rootfsaddr;
		}
	} else {
		goto out;
	}
	sparelen = master->size - spareaddr;

	/* Determine number of partitions */
	if (rootfslen > 0)
		nrparts++;

	if (kernellen > 0)
		nrparts++;

	parts = FUNC3(sizeof(*parts) * nrparts + 10 * nrparts, GFP_KERNEL);
	if (!parts) {
		ret = -ENOMEM;
		goto out;
	}

	/* Start building partition list */
	if (kernellen > 0) {
		int kernelpart = curpart;

		if (rootfslen > 0 && rootfs_first)
			kernelpart++;
		parts[kernelpart].name = "kernel";
		parts[kernelpart].offset = kerneladdr;
		parts[kernelpart].size = kernellen;
		curpart++;
	}

	if (rootfslen > 0) {
		int rootfspart = curpart;

		if (kernellen > 0 && rootfs_first)
			rootfspart--;
		parts[rootfspart].name = "rootfs";
		parts[rootfspart].offset = rootfsaddr;
		parts[rootfspart].size = rootfslen;
		if (sparelen > 0  && !rootfs_first)
			parts[rootfspart].size += sparelen;
		curpart++;
	}

	for (i = 0; i < nrparts; i++)
		FUNC5("Partition %d is %s offset %llx and length %llx\n", i,
			parts[i].name, parts[i].offset,	parts[i].size);

	FUNC5("Spare partition is offset %x and length %x\n",	spareaddr,
		sparelen);

	*pparts = parts;
	ret = 0;

out:
	FUNC7(buf);

	if (ret)
		return ret;

	return nrparts;
}