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
struct sja1000_priv {scalar_t__ read_reg; int /*<<< orphan*/  reg_base; } ;
struct platform_device {int id; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SJA1000_IOSIZE ; 
 int /*<<< orphan*/  SJA1000_IOSIZE_INDIRECT ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__* mem ; 
 struct sja1000_priv* FUNC2 (struct net_device*) ; 
 struct net_device* FUNC3 (struct platform_device*) ; 
 int /*<<< orphan*/ * port ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ sja1000_isa_port_read_reg_indirect ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct net_device *dev = FUNC3(pdev);
	struct sja1000_priv *priv = FUNC2(dev);
	int idx = pdev->id;

	FUNC6(dev);

	if (mem[idx]) {
		FUNC1(priv->reg_base);
		FUNC4(mem[idx], SJA1000_IOSIZE);
	} else {
		if (priv->read_reg == sja1000_isa_port_read_reg_indirect)
			FUNC5(port[idx], SJA1000_IOSIZE_INDIRECT);
		else
			FUNC5(port[idx], SJA1000_IOSIZE);
	}
	FUNC0(dev);

	return 0;
}