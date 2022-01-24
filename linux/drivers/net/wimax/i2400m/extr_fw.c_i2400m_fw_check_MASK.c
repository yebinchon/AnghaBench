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
struct i2400m_bcf_hdr {int /*<<< orphan*/  size; int /*<<< orphan*/  header_len; } ;
struct i2400m {int /*<<< orphan*/  fw_name; struct i2400m_bcf_hdr const** fw_hdrs; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EBADF ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int /*<<< orphan*/ ,...) ; 
 struct device* FUNC1 (struct i2400m*) ; 
 int FUNC2 (struct i2400m*,struct i2400m_bcf_hdr const*,size_t,size_t) ; 
 int FUNC3 (void**,size_t*,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static
int FUNC5(struct i2400m *i2400m, const void *bcf, size_t bcf_size)
{
	int result;
	struct device *dev = FUNC1(i2400m);
	size_t headers = 0;
	const struct i2400m_bcf_hdr *bcf_hdr;
	const void *itr, *next, *top;
	size_t slots = 0, used_slots = 0;

	for (itr = bcf, top = itr + bcf_size;
	     itr < top;
	     headers++, itr = next) {
		size_t leftover, offset, header_len, size;

		leftover = top - itr;
		offset = itr - bcf;
		if (leftover <= sizeof(*bcf_hdr)) {
			FUNC0(dev, "firmware %s: %zu B left at @%zx, "
				"not enough for BCF header\n",
				i2400m->fw_name, leftover, offset);
			break;
		}
		bcf_hdr = itr;
		/* Only the first header is supposed to be followed by
		 * payload */
		header_len = sizeof(u32) * FUNC4(bcf_hdr->header_len);
		size = sizeof(u32) * FUNC4(bcf_hdr->size);
		if (headers == 0)
			next = itr + size;
		else
			next = itr + header_len;

		result = FUNC2(i2400m, bcf_hdr, headers, offset);
		if (result < 0)
			continue;
		if (used_slots + 1 >= slots) {
			/* +1 -> we need to account for the one we'll
			 * occupy and at least an extra one for
			 * always being NULL */
			result = FUNC3(
				(void **) &i2400m->fw_hdrs, &slots,
				sizeof(i2400m->fw_hdrs[0]),
				GFP_KERNEL);
			if (result < 0)
				goto error_zrealloc;
		}
		i2400m->fw_hdrs[used_slots] = bcf_hdr;
		used_slots++;
	}
	if (headers == 0) {
		FUNC0(dev, "firmware %s: no usable headers found\n",
			i2400m->fw_name);
		result = -EBADF;
	} else
		result = 0;
error_zrealloc:
	return result;
}