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
struct i2400m_bcf_hdr {int /*<<< orphan*/  size; int /*<<< orphan*/  date; int /*<<< orphan*/  module_vendor; int /*<<< orphan*/  module_id; int /*<<< orphan*/  header_version; int /*<<< orphan*/  header_len; int /*<<< orphan*/  module_type; } ;
struct i2400m {int /*<<< orphan*/  fw_name; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EBADF ; 
 int /*<<< orphan*/  FUNC0 (int,struct device*,char*,int /*<<< orphan*/ ,size_t,size_t,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int /*<<< orphan*/ ,size_t,size_t,unsigned int,...) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int /*<<< orphan*/ ,size_t,size_t,unsigned int) ; 
 struct device* FUNC3 (struct i2400m*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static
int FUNC5(struct i2400m *i2400m,
			const struct i2400m_bcf_hdr *bcf_hdr,
			size_t index, size_t offset)
{
	struct device *dev = FUNC3(i2400m);

	unsigned module_type, header_len, major_version, minor_version,
		module_id, module_vendor, date, size;

	module_type = FUNC4(bcf_hdr->module_type);
	header_len = sizeof(u32) * FUNC4(bcf_hdr->header_len);
	major_version = (FUNC4(bcf_hdr->header_version) & 0xffff0000)
		>> 16;
	minor_version = FUNC4(bcf_hdr->header_version) & 0x0000ffff;
	module_id = FUNC4(bcf_hdr->module_id);
	module_vendor = FUNC4(bcf_hdr->module_vendor);
	date = FUNC4(bcf_hdr->date);
	size = sizeof(u32) * FUNC4(bcf_hdr->size);

	FUNC0(1, dev, "firmware %s #%zd@%08zx: BCF header "
		 "type:vendor:id 0x%x:%x:%x v%u.%u (%u/%u B) built %08x\n",
		 i2400m->fw_name, index, offset,
		 module_type, module_vendor, module_id,
		 major_version, minor_version, header_len, size, date);

	/* Hard errors */
	if (major_version != 1) {
		FUNC1(dev, "firmware %s #%zd@%08zx: major header version "
			"v%u.%u not supported\n",
			i2400m->fw_name, index, offset,
			major_version, minor_version);
		return -EBADF;
	}

	if (module_type != 6) {		/* built for the right hardware? */
		FUNC1(dev, "firmware %s #%zd@%08zx: unexpected module "
			"type 0x%x; aborting\n",
			i2400m->fw_name, index, offset,
			module_type);
		return -EBADF;
	}

	if (module_vendor != 0x8086) {
		FUNC1(dev, "firmware %s #%zd@%08zx: unexpected module "
			"vendor 0x%x; aborting\n",
			i2400m->fw_name, index, offset, module_vendor);
		return -EBADF;
	}

	if (date < 0x20080300)
		FUNC2(dev, "firmware %s #%zd@%08zx: build date %08x "
			 "too old; unsupported\n",
			 i2400m->fw_name, index, offset, date);
	return 0;
}