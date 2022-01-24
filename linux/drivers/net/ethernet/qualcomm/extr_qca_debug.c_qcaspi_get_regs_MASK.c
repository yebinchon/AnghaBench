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
typedef  size_t u32 ;
typedef  size_t u16 ;
struct qcaspi {int dummy; } ;
struct net_device {int dummy; } ;
struct ethtool_regs {int version; } ;

/* Variables and functions */
 unsigned int FUNC0 (int*) ; 
 int QCASPI_MAX_REGS ; 
 int /*<<< orphan*/  FUNC1 (size_t*,int /*<<< orphan*/ ,int) ; 
 struct qcaspi* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct qcaspi*,int,size_t*) ; 
 int* qcaspi_spi_regs ; 

__attribute__((used)) static void
FUNC4(struct net_device *dev, struct ethtool_regs *regs, void *p)
{
	struct qcaspi *qca = FUNC2(dev);
	u32 *regs_buff = p;
	unsigned int i;

	regs->version = 1;
	FUNC1(regs_buff, 0, sizeof(u32) * QCASPI_MAX_REGS);

	for (i = 0; i < FUNC0(qcaspi_spi_regs); i++) {
		u16 offset, value;

		FUNC3(qca, qcaspi_spi_regs[i], &value);
		offset = qcaspi_spi_regs[i] >> 8;
		regs_buff[offset] = value;
	}
}