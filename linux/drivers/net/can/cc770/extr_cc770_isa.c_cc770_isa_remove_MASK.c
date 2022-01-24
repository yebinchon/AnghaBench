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
struct platform_device {int id; } ;
struct net_device {int dummy; } ;
struct cc770_priv {scalar_t__ read_reg; int /*<<< orphan*/  reg_base; } ;

/* Variables and functions */
 int /*<<< orphan*/  CC770_IOSIZE ; 
 int /*<<< orphan*/  CC770_IOSIZE_INDIRECT ; 
 scalar_t__ cc770_isa_port_read_reg_indirect ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__* mem ; 
 struct cc770_priv* FUNC2 (struct net_device*) ; 
 struct net_device* FUNC3 (struct platform_device*) ; 
 int /*<<< orphan*/ * port ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct net_device *dev = FUNC3(pdev);
	struct cc770_priv *priv = FUNC2(dev);
	int idx = pdev->id;

	FUNC6(dev);

	if (mem[idx]) {
		FUNC1(priv->reg_base);
		FUNC4(mem[idx], CC770_IOSIZE);
	} else {
		if (priv->read_reg == cc770_isa_port_read_reg_indirect)
			FUNC5(port[idx], CC770_IOSIZE_INDIRECT);
		else
			FUNC5(port[idx], CC770_IOSIZE);
	}
	FUNC0(dev);

	return 0;
}