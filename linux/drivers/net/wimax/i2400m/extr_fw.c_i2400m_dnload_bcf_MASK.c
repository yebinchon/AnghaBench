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
struct i2400m_bootrom_header {int /*<<< orphan*/  target_addr; int /*<<< orphan*/  data_size; } ;
struct i2400m_bcf_hdr {int /*<<< orphan*/  header_len; } ;
struct i2400m {int /*<<< orphan*/  fw_name; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;
typedef  int /*<<< orphan*/  ack ;

/* Variables and functions */
 size_t FUNC0 (int,int) ; 
 size_t EINVAL ; 
 int /*<<< orphan*/  I2400M_BM_CMD_RAW ; 
 scalar_t__ I2400M_BRH_JUMP ; 
 scalar_t__ I2400M_BRH_SIGNED_JUMP ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,struct device*,char*,struct i2400m*,struct i2400m_bcf_hdr const*,size_t,int) ; 
 int /*<<< orphan*/  FUNC3 (int,struct device*,char*,struct i2400m*,struct i2400m_bcf_hdr const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int,struct device*,char*,size_t,...) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*,int /*<<< orphan*/ ,size_t,size_t,int,...) ; 
 size_t FUNC6 (struct i2400m*,struct i2400m_bootrom_header const*,size_t,struct i2400m_bootrom_header*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct i2400m_bootrom_header const*) ; 
 struct device* FUNC8 (struct i2400m*) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static
ssize_t FUNC10(struct i2400m *i2400m,
			  const struct i2400m_bcf_hdr *bcf, size_t bcf_len)
{
	ssize_t ret;
	struct device *dev = FUNC8(i2400m);
	size_t offset,		/* iterator offset */
		data_size,	/* Size of the data payload */
		section_size,	/* Size of the whole section (cmd + payload) */
		section = 1;
	const struct i2400m_bootrom_header *bh;
	struct i2400m_bootrom_header ack;

	FUNC3(3, dev, "(i2400m %p bcf %p bcf_len %zu)\n",
		  i2400m, bcf, bcf_len);
	/* Iterate over the command blocks in the BCF file that start
	 * after the header */
	offset = FUNC9(bcf->header_len) * sizeof(u32);
	while (1) {	/* start sending the file */
		bh = (void *) bcf + offset;
		data_size = FUNC9(bh->data_size);
		section_size = FUNC0(sizeof(*bh) + data_size, 4);
		FUNC4(7, dev,
			 "downloading section #%zu (@%zu %zu B) to 0x%08x\n",
			 section, offset, sizeof(*bh) + data_size,
			 FUNC9(bh->target_addr));
		/*
		 * We look for JUMP cmd from the bootmode header,
		 * either I2400M_BRH_SIGNED_JUMP for secure boot
		 * or I2400M_BRH_JUMP for unsecure boot, the last chunk
		 * should be the bootmode header with JUMP cmd.
		 */
		if (FUNC7(bh) == I2400M_BRH_SIGNED_JUMP ||
			FUNC7(bh) == I2400M_BRH_JUMP) {
			FUNC4(5, dev,  "jump found @%zu\n", offset);
			break;
		}
		if (offset + section_size > bcf_len) {
			FUNC5(dev, "fw %s: bad section #%zu, "
				"end (@%zu) beyond EOF (@%zu)\n",
				i2400m->fw_name, section,
				offset + section_size,  bcf_len);
			ret = -EINVAL;
			goto error_section_beyond_eof;
		}
		FUNC1(20);
		ret = FUNC6(i2400m, bh, section_size,
				    &ack, sizeof(ack), I2400M_BM_CMD_RAW);
		if (ret < 0) {
			FUNC5(dev, "fw %s: section #%zu (@%zu %zu B) "
				"failed %d\n", i2400m->fw_name, section,
				offset, sizeof(*bh) + data_size, (int) ret);
			goto error_send;
		}
		offset += section_size;
		section++;
	}
	ret = offset;
error_section_beyond_eof:
error_send:
	FUNC2(3, dev, "(i2400m %p bcf %p bcf_len %zu) = %d\n",
		i2400m, bcf, bcf_len, (int) ret);
	return ret;
}