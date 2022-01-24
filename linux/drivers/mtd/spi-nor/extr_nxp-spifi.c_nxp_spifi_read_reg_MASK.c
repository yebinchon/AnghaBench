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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct spi_nor {struct nxp_spifi* priv; } ;
struct nxp_spifi {scalar_t__ io_base; } ;

/* Variables and functions */
 scalar_t__ SPIFI_CMD ; 
 int FUNC0 (int) ; 
 int SPIFI_CMD_FIELDFORM_ALL_SERIAL ; 
 int SPIFI_CMD_FRAMEFORM_OPCODE_ONLY ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ SPIFI_DATA ; 
 int FUNC2 (struct nxp_spifi*) ; 
 int FUNC3 (struct nxp_spifi*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct spi_nor *nor, u8 opcode, u8 *buf, int len)
{
	struct nxp_spifi *spifi = nor->priv;
	u32 cmd;
	int ret;

	ret = FUNC2(spifi);
	if (ret)
		return ret;

	cmd = FUNC0(len) |
	      FUNC1(opcode) |
	      SPIFI_CMD_FIELDFORM_ALL_SERIAL |
	      SPIFI_CMD_FRAMEFORM_OPCODE_ONLY;
	FUNC5(cmd, spifi->io_base + SPIFI_CMD);

	while (len--)
		*buf++ = FUNC4(spifi->io_base + SPIFI_DATA);

	return FUNC3(spifi);
}